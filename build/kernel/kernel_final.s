	.file	"kernel_final.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"./api/types_gen.h"
	.align	2
.LC1:
	.string	"(msgLabel & ~0xfffff) == 0"
	.align	2
.LC2:
	.string	"(msgCapsUnwrapped & ~0x7) == 0"
	.align	2
.LC3:
	.string	"(msgExtraCaps & ~0x3) == 0"
	.align	2
.LC4:
	.string	"(msgLength & ~0x7f) == 0"
	.text
	.align	2
	.type	message_info_new, @function
message_info_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,-1048576
	and	a5,a4,a5
	beqz	a5,.L2
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,20
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	add	a0,a5,%lo(.LC1)
	call	_assert_fail
.L2:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sll	a5,a5,12
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-8
	beqz	a5,.L3
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,23
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC2)
	add	a0,a5,%lo(.LC2)
	call	_assert_fail
.L3:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,7
	sll	a5,a5,9
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-4
	beqz	a5,.L4
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,26
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC3)
	add	a0,a5,%lo(.LC3)
	call	_assert_fail
.L4:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,3
	sll	a5,a5,7
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,-128
	beqz	a5,.L5
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,29
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC4)
	add	a0,a5,%lo(.LC4)
	call	_assert_fail
.L5:
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,127
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	message_info_new, .-message_info_new
	.align	2
	.type	message_info_get_msgLabel, @function
message_info_get_msgLabel:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,12
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgLabel, .-message_info_get_msgLabel
	.align	2
	.type	message_info_get_msgCapsUnwrapped, @function
message_info_get_msgCapsUnwrapped:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-512
	and	a5,a4,a5
	srl	a5,a5,9
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgCapsUnwrapped, .-message_info_get_msgCapsUnwrapped
	.section	.rodata
	.align	2
.LC5:
	.string	"((~0xe00 >> 9) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgCapsUnwrapped, @function
message_info_set_msgCapsUnwrapped:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-8
	beqz	a5,.L12
	lui	a5,%hi(__FUNCTION__.1506)
	add	a3,a5,%lo(__FUNCTION__.1506)
	li	a2,48
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC5)
	add	a0,a5,%lo(.LC5)
	call	_assert_fail
.L12:
	lw	a4,-20(s0)
	li	a5,-4096
	add	a5,a5,511
	and	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a3,a5,9
	li	a5,4096
	add	a5,a5,-512
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgCapsUnwrapped, .-message_info_set_msgCapsUnwrapped
	.align	2
	.type	message_info_get_msgExtraCaps, @function
message_info_get_msgExtraCaps:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,384
	srl	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgExtraCaps, .-message_info_get_msgExtraCaps
	.section	.rodata
	.align	2
.LC6:
	.string	"((~0x180 >> 7) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgExtraCaps, @function
message_info_set_msgExtraCaps:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L17
	lui	a5,%hi(__FUNCTION__.1514)
	add	a3,a5,%lo(__FUNCTION__.1514)
	li	a2,62
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC6)
	add	a0,a5,%lo(.LC6)
	call	_assert_fail
.L17:
	lw	a5,-20(s0)
	and	a5,a5,-385
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,7
	and	a5,a5,384
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgExtraCaps, .-message_info_set_msgExtraCaps
	.align	2
	.type	message_info_get_msgLength, @function
message_info_get_msgLength:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,127
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgLength, .-message_info_get_msgLength
	.section	.rodata
	.align	2
.LC7:
	.string	"((~0x7f >> 0) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgLength, @function
message_info_set_msgLength:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-128
	beqz	a5,.L22
	lui	a5,%hi(__FUNCTION__.1522)
	add	a3,a5,%lo(__FUNCTION__.1522)
	li	a2,76
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC7)
	add	a0,a5,%lo(.LC7)
	call	_assert_fail
.L22:
	lw	a5,-20(s0)
	and	a5,a5,-128
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,127
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgLength, .-message_info_set_msgLength
	.section	.rodata
	.align	2
.LC8:
	.string	"(capAllowGrant & ~0x1) == 0"
	.align	2
.LC9:
	.string	"(capAllowRead & ~0x1) == 0"
	.align	2
.LC10:
	.string	"(capAllowWrite & ~0x1) == 0"
	.text
	.align	2
	.type	cap_rights_new, @function
cap_rights_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L25
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,94
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC8)
	add	a0,a5,%lo(.LC8)
	call	_assert_fail
.L25:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,2
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L26
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,97
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC9)
	add	a0,a5,%lo(.LC9)
	call	_assert_fail
.L26:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L27
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,100
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC10)
	add	a0,a5,%lo(.LC10)
	call	_assert_fail
.L27:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_rights_new, .-cap_rights_new
	.align	2
	.type	cap_rights_get_capAllowGrant, @function
cap_rights_get_capAllowGrant:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowGrant, .-cap_rights_get_capAllowGrant
	.align	2
	.type	cap_rights_get_capAllowRead, @function
cap_rights_get_capAllowRead:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowRead, .-cap_rights_get_capAllowRead
	.align	2
	.type	cap_rights_get_capAllowWrite, @function
cap_rights_get_capAllowWrite:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowWrite, .-cap_rights_get_capAllowWrite
	.align	2
	.type	rightsFromWord, @function
rightsFromWord:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	rightsFromWord, .-rightsFromWord
	.align	2
	.type	capTransferFromWords, @function
capTransferFromWords:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	add	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	lw	a0,-36(s0)
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	capTransferFromWords, .-capTransferFromWords
	.align	2
	.type	messageInfoFromWord, @function
messageInfoFromWord:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	message_info_get_msgLength
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,120
	bleu	a4,a5,.L40
	li	a1,120
	lw	a0,-24(s0)
	call	message_info_set_msgLength
	mv	a5,a0
	sw	a5,-24(s0)
.L40:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	messageInfoFromWord, .-messageInfoFromWord
	.align	2
	.type	wordFromMessageInfo, @function
wordFromMessageInfo:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	wordFromMessageInfo, .-wordFromMessageInfo
	.section	.rodata
	.align	2
.LC11:
	.string	"./arch/object/structures_gen.h"
	.align	2
.LC12:
	.string	"(ppn1 & ~0xfff) == 0"
	.align	2
.LC13:
	.string	"(ppn0 & ~0x3ff) == 0"
	.align	2
.LC14:
	.string	"(sw & ~0x7) == 0"
	.align	2
.LC15:
	.string	"(dirty & ~0x1) == 0"
	.align	2
.LC16:
	.string	"(read & ~0x1) == 0"
	.align	2
.LC17:
	.string	"(type & ~0xf) == 0"
	.align	2
.LC18:
	.string	"(valid & ~0x1) == 0"
	.text
	.align	2
	.type	pte_new, @function
pte_new:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L45
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,20
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L45:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sll	a5,a5,20
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-1024
	beqz	a5,.L46
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,23
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC13)
	add	a0,a5,%lo(.LC13)
	call	_assert_fail
.L46:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,1023
	sll	a5,a5,10
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-8
	beqz	a5,.L47
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,26
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC14)
	add	a0,a5,%lo(.LC14)
	call	_assert_fail
.L47:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,7
	sll	a5,a5,7
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,-2
	beqz	a5,.L48
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,29
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC15)
	add	a0,a5,%lo(.LC15)
	call	_assert_fail
.L48:
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,1
	sll	a5,a5,6
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	and	a5,a5,-2
	beqz	a5,.L49
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,32
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L49:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	and	a5,a5,1
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-56(s0)
	and	a5,a5,-16
	beqz	a5,.L50
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,35
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC17)
	add	a0,a5,%lo(.LC17)
	call	_assert_fail
.L50:
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	and	a5,a5,15
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-60(s0)
	and	a5,a5,-2
	beqz	a5,.L51
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,38
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC18)
	add	a0,a5,%lo(.LC18)
	call	_assert_fail
.L51:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	pte_new, .-pte_new
	.align	2
	.type	async_endpoint_ptr_get_aepBoundTCB, @function
async_endpoint_ptr_get_aepBoundTCB:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepBoundTCB, .-async_endpoint_ptr_get_aepBoundTCB
	.section	.rodata
	.align	2
.LC19:
	.string	"((~0xfffffff0 << 0) & v) == 0"
	.text
	.align	2
	.type	async_endpoint_ptr_set_aepBoundTCB, @function
async_endpoint_ptr_set_aepBoundTCB:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L56
	lui	a5,%hi(__FUNCTION__.1669)
	add	a3,a5,%lo(__FUNCTION__.1669)
	li	a2,62
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L56:
	lw	a5,-20(s0)
	lw	a5,12(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,12(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepBoundTCB, .-async_endpoint_ptr_set_aepBoundTCB
	.align	2
	.type	async_endpoint_ptr_get_aepMsgIdentifier, @function
async_endpoint_ptr_get_aepMsgIdentifier:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepMsgIdentifier, .-async_endpoint_ptr_get_aepMsgIdentifier
	.align	2
	.type	async_endpoint_ptr_set_aepMsgIdentifier, @function
async_endpoint_ptr_set_aepMsgIdentifier:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	sw	zero,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepMsgIdentifier, .-async_endpoint_ptr_set_aepMsgIdentifier
	.align	2
	.type	async_endpoint_ptr_get_aepQueue_head, @function
async_endpoint_ptr_get_aepQueue_head:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepQueue_head, .-async_endpoint_ptr_get_aepQueue_head
	.align	2
	.type	async_endpoint_ptr_set_aepQueue_head, @function
async_endpoint_ptr_set_aepQueue_head:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L63
	lui	a5,%hi(__FUNCTION__.1685)
	add	a3,a5,%lo(__FUNCTION__.1685)
	li	a2,88
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L63:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepQueue_head, .-async_endpoint_ptr_set_aepQueue_head
	.align	2
	.type	async_endpoint_ptr_get_aepQueue_tail, @function
async_endpoint_ptr_get_aepQueue_tail:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepQueue_tail, .-async_endpoint_ptr_get_aepQueue_tail
	.align	2
	.type	async_endpoint_ptr_set_aepQueue_tail, @function
async_endpoint_ptr_set_aepQueue_tail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L67
	lui	a5,%hi(__FUNCTION__.1693)
	add	a3,a5,%lo(__FUNCTION__.1693)
	li	a2,101
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L67:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepQueue_tail, .-async_endpoint_ptr_set_aepQueue_tail
	.align	2
	.type	async_endpoint_ptr_get_state, @function
async_endpoint_ptr_get_state:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_state, .-async_endpoint_ptr_get_state
	.section	.rodata
	.align	2
.LC20:
	.string	"((~0x3 >> 0) & v) == 0"
	.text
	.align	2
	.type	async_endpoint_ptr_set_state, @function
async_endpoint_ptr_set_state:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L71
	lui	a5,%hi(__FUNCTION__.1701)
	add	a3,a5,%lo(__FUNCTION__.1701)
	li	a2,114
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC20)
	add	a0,a5,%lo(.LC20)
	call	_assert_fail
.L71:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-4
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,3
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_state, .-async_endpoint_ptr_set_state
	.align	2
	.type	endpoint_ptr_get_epQueue_head, @function
endpoint_ptr_get_epQueue_head:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_epQueue_head, .-endpoint_ptr_get_epQueue_head
	.align	2
	.type	endpoint_ptr_set_epQueue_head, @function
endpoint_ptr_set_epQueue_head:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L75
	lui	a5,%hi(__FUNCTION__.1712)
	add	a3,a5,%lo(__FUNCTION__.1712)
	li	a2,132
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L75:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_epQueue_head, .-endpoint_ptr_set_epQueue_head
	.align	2
	.type	endpoint_ptr_get_epQueue_tail, @function
endpoint_ptr_get_epQueue_tail:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_epQueue_tail, .-endpoint_ptr_get_epQueue_tail
	.align	2
	.type	endpoint_ptr_set_epQueue_tail, @function
endpoint_ptr_set_epQueue_tail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L79
	lui	a5,%hi(__FUNCTION__.1720)
	add	a3,a5,%lo(__FUNCTION__.1720)
	li	a2,145
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L79:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_epQueue_tail, .-endpoint_ptr_set_epQueue_tail
	.align	2
	.type	endpoint_ptr_get_state, @function
endpoint_ptr_get_state:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_state, .-endpoint_ptr_get_state
	.align	2
	.type	endpoint_ptr_set_state, @function
endpoint_ptr_set_state:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L83
	lui	a5,%hi(__FUNCTION__.1728)
	add	a3,a5,%lo(__FUNCTION__.1728)
	li	a2,158
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC20)
	add	a0,a5,%lo(.LC20)
	call	_assert_fail
.L83:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-4
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,3
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_state, .-endpoint_ptr_set_state
	.align	2
	.type	pde_new, @function
pde_new:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L85
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,180
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L85:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sll	a5,a5,20
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-1024
	beqz	a5,.L86
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,183
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC13)
	add	a0,a5,%lo(.LC13)
	call	_assert_fail
.L86:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,1023
	sll	a5,a5,10
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-8
	beqz	a5,.L87
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,186
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC14)
	add	a0,a5,%lo(.LC14)
	call	_assert_fail
.L87:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,7
	sll	a5,a5,7
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,-2
	beqz	a5,.L88
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,189
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC15)
	add	a0,a5,%lo(.LC15)
	call	_assert_fail
.L88:
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,1
	sll	a5,a5,6
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	and	a5,a5,-2
	beqz	a5,.L89
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,192
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L89:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	and	a5,a5,1
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-56(s0)
	and	a5,a5,-16
	beqz	a5,.L90
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,195
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC17)
	add	a0,a5,%lo(.LC17)
	call	_assert_fail
.L90:
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	and	a5,a5,15
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-60(s0)
	and	a5,a5,-2
	beqz	a5,.L91
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,198
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC18)
	add	a0,a5,%lo(.LC18)
	call	_assert_fail
.L91:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	pde_new, .-pde_new
	.align	2
	.type	pde_get_ppn1, @function
pde_get_ppn1:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,20
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pde_get_ppn1, .-pde_get_ppn1
	.align	2
	.type	pde_get_ppn0, @function
pde_get_ppn0:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,1048576
	add	a5,a5,-1024
	and	a5,a4,a5
	srl	a5,a5,10
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pde_get_ppn0, .-pde_get_ppn0
	.align	2
	.type	cnode_capdata_get_guard, @function
cnode_capdata_get_guard:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,67108864
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cnode_capdata_get_guard, .-cnode_capdata_get_guard
	.align	2
	.type	cnode_capdata_get_guardSize, @function
cnode_capdata_get_guardSize:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,248
	srl	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cnode_capdata_get_guardSize, .-cnode_capdata_get_guardSize
	.align	2
	.type	thread_state_ptr_get_blockingIPCBadge, @function
thread_state_ptr_get_blockingIPCBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	srl	a5,a5,4
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCBadge, .-thread_state_ptr_get_blockingIPCBadge
	.align	2
	.type	thread_state_ptr_set_blockingIPCBadge, @function
thread_state_ptr_set_blockingIPCBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,4
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCBadge, .-thread_state_ptr_set_blockingIPCBadge
	.align	2
	.type	thread_state_ptr_get_blockingIPCCanGrant, @function
thread_state_ptr_get_blockingIPCCanGrant:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a5,a5,8
	srl	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCCanGrant, .-thread_state_ptr_get_blockingIPCCanGrant
	.section	.rodata
	.align	2
.LC21:
	.string	"((~0x8 >> 3) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCCanGrant, @function
thread_state_ptr_set_blockingIPCCanGrant:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L107
	lui	a5,%hi(__FUNCTION__.1779)
	add	a3,a5,%lo(__FUNCTION__.1779)
	li	a2,255
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC21)
	add	a0,a5,%lo(.LC21)
	call	_assert_fail
.L107:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-9
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,3
	and	a5,a5,8
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCCanGrant, .-thread_state_ptr_set_blockingIPCCanGrant
	.align	2
	.type	thread_state_ptr_get_blockingIPCIsCall, @function
thread_state_ptr_get_blockingIPCIsCall:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCIsCall, .-thread_state_ptr_get_blockingIPCIsCall
	.section	.rodata
	.align	2
.LC22:
	.string	"((~0x4 >> 2) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCIsCall, @function
thread_state_ptr_set_blockingIPCIsCall:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L111
	lui	a5,%hi(__FUNCTION__.1787)
	add	a3,a5,%lo(__FUNCTION__.1787)
	li	a2,268
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC22)
	add	a0,a5,%lo(.LC22)
	call	_assert_fail
.L111:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,2
	and	a5,a5,4
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCIsCall, .-thread_state_ptr_set_blockingIPCIsCall
	.align	2
	.type	thread_state_get_blockingIPCDiminishCaps, @function
thread_state_get_blockingIPCDiminishCaps:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,8(s1)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_blockingIPCDiminishCaps, .-thread_state_get_blockingIPCDiminishCaps
	.section	.rodata
	.align	2
.LC23:
	.string	"((~0x1 >> 0) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCDiminishCaps, @function
thread_state_ptr_set_blockingIPCDiminishCaps:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L115
	lui	a5,%hi(__FUNCTION__.1795)
	add	a3,a5,%lo(__FUNCTION__.1795)
	li	a2,281
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC23)
	add	a0,a5,%lo(.LC23)
	call	_assert_fail
.L115:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-2
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	and	a5,a5,1
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCDiminishCaps, .-thread_state_ptr_set_blockingIPCDiminishCaps
	.align	2
	.type	thread_state_get_tcbQueued, @function
thread_state_get_tcbQueued:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,4(s1)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_tcbQueued, .-thread_state_get_tcbQueued
	.align	2
	.type	thread_state_ptr_set_tcbQueued, @function
thread_state_ptr_set_tcbQueued:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L119
	lui	a5,%hi(__FUNCTION__.1803)
	add	a3,a5,%lo(__FUNCTION__.1803)
	li	a2,294
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC23)
	add	a0,a5,%lo(.LC23)
	call	_assert_fail
.L119:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,-2
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,1
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_tcbQueued, .-thread_state_ptr_set_tcbQueued
	.align	2
	.type	thread_state_ptr_get_blockingIPCEndpoint, @function
thread_state_ptr_get_blockingIPCEndpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCEndpoint, .-thread_state_ptr_get_blockingIPCEndpoint
	.align	2
	.type	thread_state_ptr_set_blockingIPCEndpoint, @function
thread_state_ptr_set_blockingIPCEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L123
	lui	a5,%hi(__FUNCTION__.1811)
	add	a3,a5,%lo(__FUNCTION__.1811)
	li	a2,307
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L123:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCEndpoint, .-thread_state_ptr_set_blockingIPCEndpoint
	.align	2
	.type	thread_state_get_tsType, @function
thread_state_get_tsType:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,0(s1)
	and	a5,a5,15
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_tsType, .-thread_state_get_tsType
	.align	2
	.type	thread_state_ptr_get_tsType, @function
thread_state_ptr_get_tsType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,15
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_tsType, .-thread_state_ptr_get_tsType
	.section	.rodata
	.align	2
.LC24:
	.string	"((~0xf >> 0) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_tsType, @function
thread_state_ptr_set_tsType:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-16
	beqz	a5,.L129
	lui	a5,%hi(__FUNCTION__.1822)
	add	a3,a5,%lo(__FUNCTION__.1822)
	li	a2,325
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC24)
	add	a0,a5,%lo(.LC24)
	call	_assert_fail
.L129:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-16
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,15
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_tsType, .-thread_state_ptr_set_tsType
	.section	.rodata
	.align	2
.LC25:
	.string	"(cdtRight_ & ~0x7ffffff) == 0"
	.align	2
.LC26:
	.string	"(cdtDepth & ~0x1f) == 0"
	.align	2
.LC27:
	.string	"(cdtLeft_ & ~0x7ffffff) == 0"
	.align	2
.LC28:
	.string	"(cdtLevel & ~0x1f) == 0"
	.text
	.align	2
	.type	mdb_node_new, @function
mdb_node_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-134217728
	and	a5,a4,a5
	beqz	a5,.L131
	lui	a5,%hi(__FUNCTION__.1833)
	add	a3,a5,%lo(__FUNCTION__.1833)
	li	a2,343
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC25)
	add	a0,a5,%lo(.LC25)
	call	_assert_fail
.L131:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L132
	lui	a5,%hi(__FUNCTION__.1833)
	add	a3,a5,%lo(__FUNCTION__.1833)
	li	a2,346
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC26)
	add	a0,a5,%lo(.LC26)
	call	_assert_fail
.L132:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-44(s0)
	li	a5,-134217728
	and	a5,a4,a5
	beqz	a5,.L133
	lui	a5,%hi(__FUNCTION__.1833)
	add	a3,a5,%lo(__FUNCTION__.1833)
	li	a2,349
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC27)
	add	a0,a5,%lo(.LC27)
	call	_assert_fail
.L133:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-32
	beqz	a5,.L134
	lui	a5,%hi(__FUNCTION__.1833)
	add	a3,a5,%lo(__FUNCTION__.1833)
	li	a2,352
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC28)
	add	a0,a5,%lo(.LC28)
	call	_assert_fail
.L134:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_new, .-mdb_node_new
	.align	2
	.type	mdb_node_get_cdtRight_, @function
mdb_node_get_cdtRight_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtRight_, .-mdb_node_get_cdtRight_
	.align	2
	.type	mdb_node_ptr_set_cdtRight_, @function
mdb_node_ptr_set_cdtRight_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	sll	a5,a5,5
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtRight_, .-mdb_node_ptr_set_cdtRight_
	.align	2
	.type	mdb_node_get_cdtDepth, @function
mdb_node_get_cdtDepth:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtDepth, .-mdb_node_get_cdtDepth
	.align	2
	.type	mdb_node_get_cdtLeft_, @function
mdb_node_get_cdtLeft_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtLeft_, .-mdb_node_get_cdtLeft_
	.align	2
	.type	mdb_node_ptr_set_cdtLeft_, @function
mdb_node_ptr_set_cdtLeft_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sll	a5,a5,5
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLeft_, .-mdb_node_ptr_set_cdtLeft_
	.align	2
	.type	mdb_node_get_cdtLevel, @function
mdb_node_get_cdtLevel:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtLevel, .-mdb_node_get_cdtLevel
	.section	.rodata
	.align	2
.LC29:
	.string	"((~0x1f >> 0) & v) == 0"
	.text
	.align	2
	.type	mdb_node_ptr_set_cdtLevel, @function
mdb_node_ptr_set_cdtLevel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-32
	beqz	a5,.L147
	lui	a5,%hi(__FUNCTION__.1860)
	add	a3,a5,%lo(__FUNCTION__.1860)
	li	a2,397
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC29)
	add	a0,a5,%lo(.LC29)
	call	_assert_fail
.L147:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-32
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,31
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLevel, .-mdb_node_ptr_set_cdtLevel
	.align	2
	.type	fault_get_faultType, @function
fault_get_faultType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_get_faultType, .-fault_get_faultType
	.align	2
	.type	fault_ptr_get_faultType, @function
fault_ptr_get_faultType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_ptr_get_faultType, .-fault_ptr_get_faultType
	.align	2
	.type	fault_null_fault_ptr_new, @function
fault_null_fault_ptr_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	zero,0(a5)
	lw	a5,-20(s0)
	sw	zero,4(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_null_fault_ptr_new, .-fault_null_fault_ptr_new
	.section	.rodata
	.align	2
.LC30:
	.string	"(inReceivePhase & ~0x1) == 0"
	.text
	.align	2
	.type	fault_cap_fault_new, @function
fault_cap_fault_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L154
	lui	a5,%hi(__FUNCTION__.1886)
	add	a3,a5,%lo(__FUNCTION__.1886)
	li	a2,445
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC30)
	add	a0,a5,%lo(.LC30)
	call	_assert_fail
.L154:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,31
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_cap_fault_new, .-fault_cap_fault_new
	.section	.rodata
	.align	2
.LC31:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_cap_fault"
	.text
	.align	2
	.type	fault_cap_fault_get_address, @function
fault_cap_fault_get_address:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,1
	beq	a4,a5,.L157
	lui	a5,%hi(__FUNCTION__.1890)
	add	a3,a5,%lo(__FUNCTION__.1890)
	li	a2,457
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC31)
	add	a0,a5,%lo(.LC31)
	call	_assert_fail
.L157:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_cap_fault_get_address, .-fault_cap_fault_get_address
	.align	2
	.type	fault_cap_fault_get_inReceivePhase, @function
fault_cap_fault_get_inReceivePhase:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,1
	beq	a4,a5,.L160
	lui	a5,%hi(__FUNCTION__.1894)
	add	a3,a5,%lo(__FUNCTION__.1894)
	li	a2,465
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC31)
	add	a0,a5,%lo(.LC31)
	call	_assert_fail
.L160:
	lw	a5,-24(s0)
	srl	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_cap_fault_get_inReceivePhase, .-fault_cap_fault_get_inReceivePhase
	.section	.rodata
	.align	2
.LC32:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_vm_fault"
	.text
	.align	2
	.type	fault_vm_fault_get_address, @function
fault_vm_fault_get_address:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L163
	lui	a5,%hi(__FUNCTION__.1898)
	add	a3,a5,%lo(__FUNCTION__.1898)
	li	a2,473
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L163:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_address, .-fault_vm_fault_get_address
	.align	2
	.type	fault_vm_fault_get_FSR, @function
fault_vm_fault_get_FSR:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L166
	lui	a5,%hi(__FUNCTION__.1902)
	add	a3,a5,%lo(__FUNCTION__.1902)
	li	a2,481
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L166:
	lw	a5,-24(s0)
	srl	a5,a5,18
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_FSR, .-fault_vm_fault_get_FSR
	.align	2
	.type	fault_vm_fault_get_instructionFault, @function
fault_vm_fault_get_instructionFault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L169
	lui	a5,%hi(__FUNCTION__.1906)
	add	a3,a5,%lo(__FUNCTION__.1906)
	li	a2,489
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L169:
	lw	a4,-24(s0)
	li	a5,131072
	and	a5,a4,a5
	srl	a5,a5,17
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_instructionFault, .-fault_vm_fault_get_instructionFault
	.align	2
	.type	fault_unknown_syscall_new, @function
fault_unknown_syscall_new:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,3
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_unknown_syscall_new, .-fault_unknown_syscall_new
	.section	.rodata
	.align	2
.LC33:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall"
	.text
	.align	2
	.type	fault_unknown_syscall_get_syscallNumber, @function
fault_unknown_syscall_get_syscallNumber:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,3
	beq	a4,a5,.L174
	lui	a5,%hi(__FUNCTION__.1915)
	add	a3,a5,%lo(__FUNCTION__.1915)
	li	a2,512
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC33)
	add	a0,a5,%lo(.LC33)
	call	_assert_fail
.L174:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_unknown_syscall_get_syscallNumber, .-fault_unknown_syscall_get_syscallNumber
	.section	.rodata
	.align	2
.LC34:
	.string	"(code & ~0x1fffffff) == 0"
	.text
	.align	2
	.type	fault_user_exception_new, @function
fault_user_exception_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	li	a5,-536870912
	and	a5,a4,a5
	beqz	a5,.L177
	lui	a5,%hi(__FUNCTION__.1921)
	add	a3,a5,%lo(__FUNCTION__.1921)
	li	a2,526
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC34)
	add	a0,a5,%lo(.LC34)
	call	_assert_fail
.L177:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,3
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,4
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_user_exception_new, .-fault_user_exception_new
	.section	.rodata
	.align	2
.LC35:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_user_exception"
	.text
	.align	2
	.type	fault_user_exception_get_number, @function
fault_user_exception_get_number:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,4
	beq	a4,a5,.L180
	lui	a5,%hi(__FUNCTION__.1925)
	add	a3,a5,%lo(__FUNCTION__.1925)
	li	a2,538
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC35)
	add	a0,a5,%lo(.LC35)
	call	_assert_fail
.L180:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_user_exception_get_number, .-fault_user_exception_get_number
	.align	2
	.type	fault_user_exception_get_code, @function
fault_user_exception_get_code:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,4
	beq	a4,a5,.L183
	lui	a5,%hi(__FUNCTION__.1929)
	add	a3,a5,%lo(__FUNCTION__.1929)
	li	a2,546
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC35)
	add	a0,a5,%lo(.LC35)
	call	_assert_fail
.L183:
	lw	a5,-24(s0)
	srl	a5,a5,3
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_user_exception_get_code, .-fault_user_exception_get_code
	.align	2
	.type	cap_get_capType, @function
cap_get_capType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,14
	li	a5,14
	beq	a4,a5,.L186
	lw	a5,-24(s0)
	and	a5,a5,15
	j	.L187
.L186:
	lw	a5,-24(s0)
	and	a5,a5,255
.L187:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capType, .-cap_get_capType
	.align	2
	.type	cap_null_cap_new, @function
cap_null_cap_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_null_cap_new, .-cap_null_cap_new
	.section	.rodata
	.align	2
.LC36:
	.string	"(capDeviceMemory & ~0x1) == 0"
	.align	2
.LC37:
	.string	"(capBlockSize & ~0x1f) == 0"
	.align	2
.LC38:
	.string	"(capPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_untyped_cap_new, @function
cap_untyped_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L191
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,603
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC36)
	add	a0,a5,%lo(.LC36)
	call	_assert_fail
.L191:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L192
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,606
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC37)
	add	a0,a5,%lo(.LC37)
	call	_assert_fail
.L192:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,15
	beqz	a5,.L193
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,609
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC38)
	add	a0,a5,%lo(.LC38)
	call	_assert_fail
.L193:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,2
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_untyped_cap_new, .-cap_untyped_cap_new
	.section	.rodata
	.align	2
.LC39:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_untyped_cap"
	.text
	.align	2
	.type	cap_untyped_cap_get_capDeviceMemory, @function
cap_untyped_cap_get_capDeviceMemory:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L196
	lui	a5,%hi(__FUNCTION__.1967)
	add	a3,a5,%lo(__FUNCTION__.1967)
	li	a2,621
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L196:
	lw	a5,-20(s0)
	and	a5,a5,32
	srl	a5,a5,5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capDeviceMemory, .-cap_untyped_cap_get_capDeviceMemory
	.align	2
	.type	cap_untyped_cap_get_capBlockSize, @function
cap_untyped_cap_get_capBlockSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L199
	lui	a5,%hi(__FUNCTION__.1971)
	add	a3,a5,%lo(__FUNCTION__.1971)
	li	a2,629
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L199:
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capBlockSize, .-cap_untyped_cap_get_capBlockSize
	.section	.rodata
	.align	2
.LC40:
	.string	"((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap"
	.text
	.align	2
	.type	cap_untyped_cap_ptr_get_capBlockSize, @function
cap_untyped_cap_ptr_get_capBlockSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L202
	lui	a5,%hi(__FUNCTION__.1975)
	add	a3,a5,%lo(__FUNCTION__.1975)
	li	a2,637
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC40)
	add	a0,a5,%lo(.LC40)
	call	_assert_fail
.L202:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_ptr_get_capBlockSize, .-cap_untyped_cap_ptr_get_capBlockSize
	.align	2
	.type	cap_untyped_cap_get_capPtr, @function
cap_untyped_cap_get_capPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L205
	lui	a5,%hi(__FUNCTION__.1979)
	add	a3,a5,%lo(__FUNCTION__.1979)
	li	a2,645
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L205:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capPtr, .-cap_untyped_cap_get_capPtr
	.section	.rodata
	.align	2
.LC41:
	.string	"(capEPBadge & ~0xfffffff) == 0"
	.align	2
.LC42:
	.string	"(capCanGrant & ~0x1) == 0"
	.align	2
.LC43:
	.string	"(capCanSend & ~0x1) == 0"
	.align	2
.LC44:
	.string	"(capCanReceive & ~0x1) == 0"
	.align	2
.LC45:
	.string	"(capEPPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_endpoint_cap_new, @function
cap_endpoint_cap_new:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-268435456
	and	a5,a4,a5
	beqz	a5,.L208
	lui	a5,%hi(__FUNCTION__.1988)
	add	a3,a5,%lo(__FUNCTION__.1988)
	li	a2,658
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC41)
	add	a0,a5,%lo(.LC41)
	call	_assert_fail
.L208:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L209
	lui	a5,%hi(__FUNCTION__.1988)
	add	a3,a5,%lo(__FUNCTION__.1988)
	li	a2,661
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC42)
	add	a0,a5,%lo(.LC42)
	call	_assert_fail
.L209:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,2
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L210
	lui	a5,%hi(__FUNCTION__.1988)
	add	a3,a5,%lo(__FUNCTION__.1988)
	li	a2,664
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC43)
	add	a0,a5,%lo(.LC43)
	call	_assert_fail
.L210:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,-2
	beqz	a5,.L211
	lui	a5,%hi(__FUNCTION__.1988)
	add	a3,a5,%lo(__FUNCTION__.1988)
	li	a2,667
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC44)
	add	a0,a5,%lo(.LC44)
	call	_assert_fail
.L211:
	lw	a4,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	and	a5,a5,15
	beqz	a5,.L212
	lui	a5,%hi(__FUNCTION__.1988)
	add	a3,a5,%lo(__FUNCTION__.1988)
	li	a2,670
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L212:
	lw	a4,-28(s0)
	lw	a5,-52(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,4
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cap_endpoint_cap_new, .-cap_endpoint_cap_new
	.section	.rodata
	.align	2
.LC46:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap"
	.text
	.align	2
	.type	cap_endpoint_cap_get_capEPPtr, @function
cap_endpoint_cap_get_capEPPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L215
	lui	a5,%hi(__FUNCTION__.1992)
	add	a3,a5,%lo(__FUNCTION__.1992)
	li	a2,682
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L215:
	lw	a5,-20(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capEPPtr, .-cap_endpoint_cap_get_capEPPtr
	.align	2
	.type	cap_endpoint_cap_get_capCanGrant, @function
cap_endpoint_cap_get_capCanGrant:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L218
	lui	a5,%hi(__FUNCTION__.1996)
	add	a3,a5,%lo(__FUNCTION__.1996)
	li	a2,690
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L218:
	lw	a5,-20(s0)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanGrant, .-cap_endpoint_cap_get_capCanGrant
	.align	2
	.type	cap_endpoint_cap_set_capCanGrant, @function
cap_endpoint_cap_set_capCanGrant:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L221
	lui	a5,%hi(__FUNCTION__.2001)
	add	a3,a5,%lo(__FUNCTION__.2001)
	li	a2,698
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L221:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L222
	lui	a5,%hi(__FUNCTION__.2001)
	add	a3,a5,%lo(__FUNCTION__.2001)
	li	a2,700
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC22)
	add	a0,a5,%lo(.LC22)
	call	_assert_fail
.L222:
	lw	a5,-36(s0)
	and	a5,a5,-5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,2
	and	a5,a5,4
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanGrant, .-cap_endpoint_cap_set_capCanGrant
	.align	2
	.type	cap_endpoint_cap_get_capCanReceive, @function
cap_endpoint_cap_get_capCanReceive:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L225
	lui	a5,%hi(__FUNCTION__.2005)
	add	a3,a5,%lo(__FUNCTION__.2005)
	li	a2,710
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L225:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanReceive, .-cap_endpoint_cap_get_capCanReceive
	.section	.rodata
	.align	2
.LC47:
	.string	"((~0x2 >> 1) & v) == 0"
	.text
	.align	2
	.type	cap_endpoint_cap_set_capCanReceive, @function
cap_endpoint_cap_set_capCanReceive:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L228
	lui	a5,%hi(__FUNCTION__.2010)
	add	a3,a5,%lo(__FUNCTION__.2010)
	li	a2,718
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L228:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L229
	lui	a5,%hi(__FUNCTION__.2010)
	add	a3,a5,%lo(__FUNCTION__.2010)
	li	a2,720
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC47)
	add	a0,a5,%lo(.LC47)
	call	_assert_fail
.L229:
	lw	a5,-36(s0)
	and	a5,a5,-3
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanReceive, .-cap_endpoint_cap_set_capCanReceive
	.align	2
	.type	cap_endpoint_cap_get_capCanSend, @function
cap_endpoint_cap_get_capCanSend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L232
	lui	a5,%hi(__FUNCTION__.2014)
	add	a3,a5,%lo(__FUNCTION__.2014)
	li	a2,730
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L232:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanSend, .-cap_endpoint_cap_get_capCanSend
	.align	2
	.type	cap_endpoint_cap_set_capCanSend, @function
cap_endpoint_cap_set_capCanSend:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L235
	lui	a5,%hi(__FUNCTION__.2019)
	add	a3,a5,%lo(__FUNCTION__.2019)
	li	a2,738
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L235:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L236
	lui	a5,%hi(__FUNCTION__.2019)
	add	a3,a5,%lo(__FUNCTION__.2019)
	li	a2,740
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC23)
	add	a0,a5,%lo(.LC23)
	call	_assert_fail
.L236:
	lw	a5,-36(s0)
	and	a5,a5,-2
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanSend, .-cap_endpoint_cap_set_capCanSend
	.align	2
	.type	cap_endpoint_cap_get_capEPBadge, @function
cap_endpoint_cap_get_capEPBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L239
	lui	a5,%hi(__FUNCTION__.2023)
	add	a3,a5,%lo(__FUNCTION__.2023)
	li	a2,750
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L239:
	lw	a5,-24(s0)
	srl	a5,a5,4
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capEPBadge, .-cap_endpoint_cap_get_capEPBadge
	.align	2
	.type	cap_endpoint_cap_set_capEPBadge, @function
cap_endpoint_cap_set_capEPBadge:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L242
	lui	a5,%hi(__FUNCTION__.2028)
	add	a3,a5,%lo(__FUNCTION__.2028)
	li	a2,758
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L242:
	lw	a5,-40(s0)
	and	a5,a5,15
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capEPBadge, .-cap_endpoint_cap_set_capEPBadge
	.section	.rodata
	.align	2
.LC48:
	.string	"(capAEPBadge & ~0xfffffff) == 0"
	.align	2
.LC49:
	.string	"(capAEPCanReceive & ~0x1) == 0"
	.align	2
.LC50:
	.string	"(capAEPCanSend & ~0x1) == 0"
	.align	2
.LC51:
	.string	"(capAEPPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_async_endpoint_cap_new, @function
cap_async_endpoint_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-268435456
	and	a5,a4,a5
	beqz	a5,.L245
	lui	a5,%hi(__FUNCTION__.2036)
	add	a3,a5,%lo(__FUNCTION__.2036)
	li	a2,775
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC48)
	add	a0,a5,%lo(.LC48)
	call	_assert_fail
.L245:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L246
	lui	a5,%hi(__FUNCTION__.2036)
	add	a3,a5,%lo(__FUNCTION__.2036)
	li	a2,778
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC49)
	add	a0,a5,%lo(.LC49)
	call	_assert_fail
.L246:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L247
	lui	a5,%hi(__FUNCTION__.2036)
	add	a3,a5,%lo(__FUNCTION__.2036)
	li	a2,781
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC50)
	add	a0,a5,%lo(.LC50)
	call	_assert_fail
.L247:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,15
	beqz	a5,.L248
	lui	a5,%hi(__FUNCTION__.2036)
	add	a3,a5,%lo(__FUNCTION__.2036)
	li	a2,784
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC51)
	add	a0,a5,%lo(.LC51)
	call	_assert_fail
.L248:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,6
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_new, .-cap_async_endpoint_cap_new
	.section	.rodata
	.align	2
.LC52:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap"
	.text
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPBadge, @function
cap_async_endpoint_cap_get_capAEPBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L251
	lui	a5,%hi(__FUNCTION__.2040)
	add	a3,a5,%lo(__FUNCTION__.2040)
	li	a2,796
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L251:
	lw	a5,-20(s0)
	srl	a5,a5,4
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPBadge, .-cap_async_endpoint_cap_get_capAEPBadge
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPBadge, @function
cap_async_endpoint_cap_set_capAEPBadge:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L254
	lui	a5,%hi(__FUNCTION__.2045)
	add	a3,a5,%lo(__FUNCTION__.2045)
	li	a2,804
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L254:
	lw	a5,-36(s0)
	and	a5,a5,15
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPBadge, .-cap_async_endpoint_cap_set_capAEPBadge
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPCanReceive, @function
cap_async_endpoint_cap_get_capAEPCanReceive:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L257
	lui	a5,%hi(__FUNCTION__.2049)
	add	a3,a5,%lo(__FUNCTION__.2049)
	li	a2,816
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L257:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPCanReceive, .-cap_async_endpoint_cap_get_capAEPCanReceive
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPCanReceive, @function
cap_async_endpoint_cap_set_capAEPCanReceive:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L260
	lui	a5,%hi(__FUNCTION__.2054)
	add	a3,a5,%lo(__FUNCTION__.2054)
	li	a2,824
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L260:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L261
	lui	a5,%hi(__FUNCTION__.2054)
	add	a3,a5,%lo(__FUNCTION__.2054)
	li	a2,826
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC47)
	add	a0,a5,%lo(.LC47)
	call	_assert_fail
.L261:
	lw	a5,-36(s0)
	and	a5,a5,-3
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPCanReceive, .-cap_async_endpoint_cap_set_capAEPCanReceive
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPCanSend, @function
cap_async_endpoint_cap_get_capAEPCanSend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L264
	lui	a5,%hi(__FUNCTION__.2058)
	add	a3,a5,%lo(__FUNCTION__.2058)
	li	a2,836
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L264:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPCanSend, .-cap_async_endpoint_cap_get_capAEPCanSend
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPCanSend, @function
cap_async_endpoint_cap_set_capAEPCanSend:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L267
	lui	a5,%hi(__FUNCTION__.2063)
	add	a3,a5,%lo(__FUNCTION__.2063)
	li	a2,844
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L267:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L268
	lui	a5,%hi(__FUNCTION__.2063)
	add	a3,a5,%lo(__FUNCTION__.2063)
	li	a2,846
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC23)
	add	a0,a5,%lo(.LC23)
	call	_assert_fail
.L268:
	lw	a5,-36(s0)
	and	a5,a5,-2
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPCanSend, .-cap_async_endpoint_cap_set_capAEPCanSend
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPPtr, @function
cap_async_endpoint_cap_get_capAEPPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L271
	lui	a5,%hi(__FUNCTION__.2067)
	add	a3,a5,%lo(__FUNCTION__.2067)
	li	a2,856
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L271:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPPtr, .-cap_async_endpoint_cap_get_capAEPPtr
	.section	.rodata
	.align	2
.LC53:
	.string	"(capInCDT & ~0x1) == 0"
	.align	2
.LC54:
	.string	"(capReplyMaster & ~0x1) == 0"
	.align	2
.LC55:
	.string	"(capTCBPtr & ~0xffffffe0) == 0"
	.text
	.align	2
	.type	cap_reply_cap_new, @function
cap_reply_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L274
	lui	a5,%hi(__FUNCTION__.2074)
	add	a3,a5,%lo(__FUNCTION__.2074)
	li	a2,869
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC53)
	add	a0,a5,%lo(.LC53)
	call	_assert_fail
.L274:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L275
	lui	a5,%hi(__FUNCTION__.2074)
	add	a3,a5,%lo(__FUNCTION__.2074)
	li	a2,872
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC54)
	add	a0,a5,%lo(.LC54)
	call	_assert_fail
.L275:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,31
	beqz	a5,.L276
	lui	a5,%hi(__FUNCTION__.2074)
	add	a3,a5,%lo(__FUNCTION__.2074)
	li	a2,875
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC55)
	add	a0,a5,%lo(.LC55)
	call	_assert_fail
.L276:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-32
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,8
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_reply_cap_new, .-cap_reply_cap_new
	.section	.rodata
	.align	2
.LC56:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_reply_cap"
	.text
	.align	2
	.type	cap_reply_cap_get_capInCDT, @function
cap_reply_cap_get_capInCDT:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L279
	lui	a5,%hi(__FUNCTION__.2078)
	add	a3,a5,%lo(__FUNCTION__.2078)
	li	a2,887
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L279:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capInCDT, .-cap_reply_cap_get_capInCDT
	.section	.rodata
	.align	2
.LC57:
	.string	"((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap"
	.text
	.align	2
	.type	cap_reply_cap_ptr_set_capInCDT, @function
cap_reply_cap_ptr_set_capInCDT:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L282
	lui	a5,%hi(__FUNCTION__.2083)
	add	a3,a5,%lo(__FUNCTION__.2083)
	li	a2,896
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC57)
	add	a0,a5,%lo(.LC57)
	call	_assert_fail
.L282:
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L283
	lui	a5,%hi(__FUNCTION__.2083)
	add	a3,a5,%lo(__FUNCTION__.2083)
	li	a2,899
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC47)
	add	a0,a5,%lo(.LC47)
	call	_assert_fail
.L283:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,-3
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_ptr_set_capInCDT, .-cap_reply_cap_ptr_set_capInCDT
	.align	2
	.type	cap_reply_cap_get_capReplyMaster, @function
cap_reply_cap_get_capReplyMaster:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L285
	lui	a5,%hi(__FUNCTION__.2087)
	add	a3,a5,%lo(__FUNCTION__.2087)
	li	a2,908
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L285:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capReplyMaster, .-cap_reply_cap_get_capReplyMaster
	.align	2
	.type	cap_reply_cap_get_capTCBPtr, @function
cap_reply_cap_get_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L288
	lui	a5,%hi(__FUNCTION__.2091)
	add	a3,a5,%lo(__FUNCTION__.2091)
	li	a2,916
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L288:
	lw	a5,-24(s0)
	and	a5,a5,-32
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capTCBPtr, .-cap_reply_cap_get_capTCBPtr
	.section	.rodata
	.align	2
.LC58:
	.string	"((~0xffffffe0 << 0) & v) == 0"
	.text
	.align	2
	.type	cap_reply_cap_ptr_set_capTCBPtr, @function
cap_reply_cap_ptr_set_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L291
	lui	a5,%hi(__FUNCTION__.2096)
	add	a3,a5,%lo(__FUNCTION__.2096)
	li	a2,925
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC57)
	add	a0,a5,%lo(.LC57)
	call	_assert_fail
.L291:
	lw	a5,-24(s0)
	and	a5,a5,31
	beqz	a5,.L292
	lui	a5,%hi(__FUNCTION__.2096)
	add	a3,a5,%lo(__FUNCTION__.2096)
	li	a2,928
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC58)
	add	a0,a5,%lo(.LC58)
	call	_assert_fail
.L292:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-32
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_ptr_set_capTCBPtr, .-cap_reply_cap_ptr_set_capTCBPtr
	.section	.rodata
	.align	2
.LC59:
	.string	"(capCNodeRadix & ~0x1f) == 0"
	.align	2
.LC60:
	.string	"(capCNodeGuardSize & ~0x1f) == 0"
	.align	2
.LC61:
	.string	"(capCNodeGuard & ~0x3ffff) == 0"
	.align	2
.LC62:
	.string	"(capCNodePtr & ~0xffffffe0) == 0"
	.text
	.align	2
	.type	cap_cnode_cap_new, @function
cap_cnode_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-32
	beqz	a5,.L294
	lui	a5,%hi(__FUNCTION__.2104)
	add	a3,a5,%lo(__FUNCTION__.2104)
	li	a2,942
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC59)
	add	a0,a5,%lo(.LC59)
	call	_assert_fail
.L294:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L295
	lui	a5,%hi(__FUNCTION__.2104)
	add	a3,a5,%lo(__FUNCTION__.2104)
	li	a2,945
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L295:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	sll	a5,a5,27
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-44(s0)
	li	a5,-262144
	and	a5,a4,a5
	beqz	a5,.L296
	lui	a5,%hi(__FUNCTION__.2104)
	add	a3,a5,%lo(__FUNCTION__.2104)
	li	a2,948
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC61)
	add	a0,a5,%lo(.LC61)
	call	_assert_fail
.L296:
	lw	a4,-28(s0)
	lw	a3,-44(s0)
	li	a5,262144
	add	a5,a5,-1
	and	a5,a3,a5
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,31
	beqz	a5,.L297
	lui	a5,%hi(__FUNCTION__.2104)
	add	a3,a5,%lo(__FUNCTION__.2104)
	li	a2,951
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC62)
	add	a0,a5,%lo(.LC62)
	call	_assert_fail
.L297:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-32
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,10
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_new, .-cap_cnode_cap_new
	.section	.rodata
	.align	2
.LC63:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_cnode_cap"
	.text
	.align	2
	.type	cap_cnode_cap_get_capCNodeGuardSize, @function
cap_cnode_cap_get_capCNodeGuardSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L300
	lui	a5,%hi(__FUNCTION__.2108)
	add	a3,a5,%lo(__FUNCTION__.2108)
	li	a2,963
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L300:
	lw	a5,-20(s0)
	srl	a5,a5,27
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodeGuardSize, .-cap_cnode_cap_get_capCNodeGuardSize
	.align	2
	.type	cap_cnode_cap_set_capCNodeGuardSize, @function
cap_cnode_cap_set_capCNodeGuardSize:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L303
	lui	a5,%hi(__FUNCTION__.2113)
	add	a3,a5,%lo(__FUNCTION__.2113)
	li	a2,971
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L303:
	lw	a4,-36(s0)
	li	a5,134217728
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,27
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_set_capCNodeGuardSize, .-cap_cnode_cap_set_capCNodeGuardSize
	.section	.rodata
	.align	2
.LC64:
	.string	"((~0x7fffe0 >> 5) & v) == 0"
	.text
	.align	2
	.type	cap_cnode_cap_set_capCNodeGuard, @function
cap_cnode_cap_set_capCNodeGuard:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L306
	lui	a5,%hi(__FUNCTION__.2118)
	add	a3,a5,%lo(__FUNCTION__.2118)
	li	a2,983
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L306:
	lw	a4,-44(s0)
	li	a5,-262144
	and	a5,a4,a5
	beqz	a5,.L307
	lui	a5,%hi(__FUNCTION__.2118)
	add	a3,a5,%lo(__FUNCTION__.2118)
	li	a2,985
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC64)
	add	a0,a5,%lo(.LC64)
	call	_assert_fail
.L307:
	lw	a4,-36(s0)
	li	a5,-8388608
	add	a5,a5,31
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a3,a5,5
	li	a5,8388608
	add	a5,a5,-32
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_set_capCNodeGuard, .-cap_cnode_cap_set_capCNodeGuard
	.align	2
	.type	cap_cnode_cap_get_capCNodeRadix, @function
cap_cnode_cap_get_capCNodeRadix:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L310
	lui	a5,%hi(__FUNCTION__.2122)
	add	a3,a5,%lo(__FUNCTION__.2122)
	li	a2,995
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L310:
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodeRadix, .-cap_cnode_cap_get_capCNodeRadix
	.align	2
	.type	cap_cnode_cap_get_capCNodePtr, @function
cap_cnode_cap_get_capCNodePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L313
	lui	a5,%hi(__FUNCTION__.2126)
	add	a3,a5,%lo(__FUNCTION__.2126)
	li	a2,1003
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L313:
	lw	a5,-24(s0)
	and	a5,a5,-32
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodePtr, .-cap_cnode_cap_get_capCNodePtr
	.section	.rodata
	.align	2
.LC65:
	.string	"(capTCBPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_thread_cap_new, @function
cap_thread_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,15
	beqz	a5,.L316
	lui	a5,%hi(__FUNCTION__.2131)
	add	a3,a5,%lo(__FUNCTION__.2131)
	li	a2,1016
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC65)
	add	a0,a5,%lo(.LC65)
	call	_assert_fail
.L316:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,12
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_thread_cap_new, .-cap_thread_cap_new
	.section	.rodata
	.align	2
.LC66:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_thread_cap"
	.text
	.align	2
	.type	cap_thread_cap_get_capTCBPtr, @function
cap_thread_cap_get_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,12
	beq	a4,a5,.L319
	lui	a5,%hi(__FUNCTION__.2135)
	add	a3,a5,%lo(__FUNCTION__.2135)
	li	a2,1028
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC66)
	add	a0,a5,%lo(.LC66)
	call	_assert_fail
.L319:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_thread_cap_get_capTCBPtr, .-cap_thread_cap_get_capTCBPtr
	.section	.rodata
	.align	2
.LC67:
	.string	"(capFMappedObjectHigh & ~0xfffff) == 0"
	.align	2
.LC68:
	.string	"(capFMappedIndex & ~0xfff) == 0"
	.align	2
.LC69:
	.string	"(capFSize & ~0x7) == 0"
	.align	2
.LC70:
	.string	"(capFVMRights & ~0x3) == 0"
	.align	2
.LC71:
	.string	"(capFMappedObjectLow & ~0x3) == 0"
	.align	2
.LC72:
	.string	"(capFBasePtr & ~0xfffff000) == 0"
	.text
	.align	2
	.type	cap_frame_cap_new, @function
cap_frame_cap_new:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-1048576
	and	a5,a4,a5
	beqz	a5,.L322
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1041
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC67)
	add	a0,a5,%lo(.LC67)
	call	_assert_fail
.L322:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sll	a5,a5,12
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L323
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1044
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC68)
	add	a0,a5,%lo(.LC68)
	call	_assert_fail
.L323:
	lw	a4,-28(s0)
	lw	a3,-40(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,-8
	beqz	a5,.L324
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1047
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC69)
	add	a0,a5,%lo(.LC69)
	call	_assert_fail
.L324:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sll	a5,a5,29
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-4
	beqz	a5,.L325
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1050
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC70)
	add	a0,a5,%lo(.LC70)
	call	_assert_fail
.L325:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,3
	sll	a5,a5,27
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	and	a5,a5,-4
	beqz	a5,.L326
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1053
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC71)
	add	a0,a5,%lo(.LC71)
	call	_assert_fail
.L326:
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	and	a5,a5,3
	sll	a5,a5,24
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a4,-56(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	beqz	a5,.L327
	lui	a5,%hi(__FUNCTION__.2145)
	add	a3,a5,%lo(__FUNCTION__.2145)
	li	a2,1056
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L327:
	lw	a4,-32(s0)
	lw	a3,-56(s0)
	li	a5,-4096
	and	a5,a3,a5
	srl	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cap_frame_cap_new, .-cap_frame_cap_new
	.section	.rodata
	.align	2
.LC73:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_frame_cap"
	.text
	.align	2
	.type	cap_frame_cap_get_capFMappedObjectHigh, @function
cap_frame_cap_get_capFMappedObjectHigh:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L330
	lui	a5,%hi(__FUNCTION__.2149)
	add	a3,a5,%lo(__FUNCTION__.2149)
	li	a2,1068
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L330:
	lw	a5,-20(s0)
	srl	a5,a5,12
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObjectHigh, .-cap_frame_cap_get_capFMappedObjectHigh
	.align	2
	.type	cap_frame_cap_set_capFMappedObjectHigh, @function
cap_frame_cap_set_capFMappedObjectHigh:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L333
	lui	a5,%hi(__FUNCTION__.2154)
	add	a3,a5,%lo(__FUNCTION__.2154)
	li	a2,1076
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L333:
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,12
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_frame_cap_set_capFMappedObjectHigh, .-cap_frame_cap_set_capFMappedObjectHigh
	.align	2
	.type	cap_frame_cap_get_capFMappedIndex, @function
cap_frame_cap_get_capFMappedIndex:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L336
	lui	a5,%hi(__FUNCTION__.2163)
	add	a3,a5,%lo(__FUNCTION__.2163)
	li	a2,1101
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L336:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedIndex, .-cap_frame_cap_get_capFMappedIndex
	.section	.rodata
	.align	2
.LC74:
	.string	"((~0xfff >> 0) & v) == 0"
	.text
	.align	2
	.type	cap_frame_cap_set_capFMappedIndex, @function
cap_frame_cap_set_capFMappedIndex:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L339
	lui	a5,%hi(__FUNCTION__.2168)
	add	a3,a5,%lo(__FUNCTION__.2168)
	li	a2,1109
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L339:
	lw	a4,-44(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L340
	lui	a5,%hi(__FUNCTION__.2168)
	add	a3,a5,%lo(__FUNCTION__.2168)
	li	a2,1111
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC74)
	add	a0,a5,%lo(.LC74)
	call	_assert_fail
.L340:
	lw	a4,-36(s0)
	li	a5,-4096
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a3,-44(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_frame_cap_set_capFMappedIndex, .-cap_frame_cap_set_capFMappedIndex
	.align	2
	.type	cap_frame_cap_get_capFSize, @function
cap_frame_cap_get_capFSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L343
	lui	a5,%hi(__FUNCTION__.2172)
	add	a3,a5,%lo(__FUNCTION__.2172)
	li	a2,1121
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L343:
	lw	a5,-24(s0)
	srl	a5,a5,29
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFSize, .-cap_frame_cap_get_capFSize
	.align	2
	.type	cap_frame_cap_get_capFVMRights, @function
cap_frame_cap_get_capFVMRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L346
	lui	a5,%hi(__FUNCTION__.2176)
	add	a3,a5,%lo(__FUNCTION__.2176)
	li	a2,1129
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L346:
	lw	a4,-24(s0)
	li	a5,402653184
	and	a5,a4,a5
	srl	a5,a5,27
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFVMRights, .-cap_frame_cap_get_capFVMRights
	.align	2
	.type	cap_frame_cap_get_capFMappedObjectLow, @function
cap_frame_cap_get_capFMappedObjectLow:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L349
	lui	a5,%hi(__FUNCTION__.2180)
	add	a3,a5,%lo(__FUNCTION__.2180)
	li	a2,1137
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L349:
	lw	a4,-24(s0)
	li	a5,50331648
	and	a5,a4,a5
	srl	a5,a5,24
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObjectLow, .-cap_frame_cap_get_capFMappedObjectLow
	.section	.rodata
	.align	2
.LC75:
	.string	"((~0x3000000 >> 24) & v) == 0"
	.text
	.align	2
	.type	cap_frame_cap_set_capFMappedObjectLow, @function
cap_frame_cap_set_capFMappedObjectLow:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L352
	lui	a5,%hi(__FUNCTION__.2185)
	add	a3,a5,%lo(__FUNCTION__.2185)
	li	a2,1145
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L352:
	lw	a5,-44(s0)
	and	a5,a5,-4
	beqz	a5,.L353
	lui	a5,%hi(__FUNCTION__.2185)
	add	a3,a5,%lo(__FUNCTION__.2185)
	li	a2,1147
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC75)
	add	a0,a5,%lo(.LC75)
	call	_assert_fail
.L353:
	lw	a4,-40(s0)
	li	a5,-50331648
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sll	a3,a5,24
	li	a5,50331648
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_frame_cap_set_capFMappedObjectLow, .-cap_frame_cap_set_capFMappedObjectLow
	.align	2
	.type	cap_frame_cap_get_capFBasePtr, @function
cap_frame_cap_get_capFBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L356
	lui	a5,%hi(__FUNCTION__.2194)
	add	a3,a5,%lo(__FUNCTION__.2194)
	li	a2,1170
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC73)
	add	a0,a5,%lo(.LC73)
	call	_assert_fail
.L356:
	lw	a4,-24(s0)
	li	a5,16777216
	add	a5,a5,-16
	and	a5,a4,a5
	sll	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFBasePtr, .-cap_frame_cap_get_capFBasePtr
	.section	.rodata
	.align	2
.LC76:
	.string	"(capPTMappedObject & ~0xfffff000) == 0"
	.align	2
.LC77:
	.string	"(capPTMappedIndex & ~0xfff) == 0"
	.align	2
.LC78:
	.string	"(capPTBasePtr & ~0xfffffc00) == 0"
	.text
	.align	2
	.type	cap_page_table_cap_new, @function
cap_page_table_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	beqz	a5,.L359
	lui	a5,%hi(__FUNCTION__.2201)
	add	a3,a5,%lo(__FUNCTION__.2201)
	li	a2,1183
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC76)
	add	a0,a5,%lo(.LC76)
	call	_assert_fail
.L359:
	lw	a4,-28(s0)
	lw	a3,-36(s0)
	li	a5,-4096
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L360
	lui	a5,%hi(__FUNCTION__.2201)
	add	a3,a5,%lo(__FUNCTION__.2201)
	li	a2,1186
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC77)
	add	a0,a5,%lo(.LC77)
	call	_assert_fail
.L360:
	lw	a4,-28(s0)
	lw	a3,-40(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,1023
	beqz	a5,.L361
	lui	a5,%hi(__FUNCTION__.2201)
	add	a3,a5,%lo(__FUNCTION__.2201)
	li	a2,1189
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC78)
	add	a0,a5,%lo(.LC78)
	call	_assert_fail
.L361:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-1024
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,3
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_page_table_cap_new, .-cap_page_table_cap_new
	.section	.rodata
	.align	2
.LC79:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_page_table_cap"
	.text
	.align	2
	.type	cap_page_table_cap_get_capPTMappedObject, @function
cap_page_table_cap_get_capPTMappedObject:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L364
	lui	a5,%hi(__FUNCTION__.2205)
	add	a3,a5,%lo(__FUNCTION__.2205)
	li	a2,1201
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC79)
	add	a0,a5,%lo(.LC79)
	call	_assert_fail
.L364:
	lw	a4,-20(s0)
	li	a5,-4096
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTMappedObject, .-cap_page_table_cap_get_capPTMappedObject
	.section	.rodata
	.align	2
.LC80:
	.string	"((~0xfffff000 << 0) & v) == 0"
	.text
	.align	2
	.type	cap_page_table_cap_set_capPTMappedObject, @function
cap_page_table_cap_set_capPTMappedObject:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L367
	lui	a5,%hi(__FUNCTION__.2210)
	add	a3,a5,%lo(__FUNCTION__.2210)
	li	a2,1209
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC79)
	add	a0,a5,%lo(.LC79)
	call	_assert_fail
.L367:
	lw	a4,-44(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	beqz	a5,.L368
	lui	a5,%hi(__FUNCTION__.2210)
	add	a3,a5,%lo(__FUNCTION__.2210)
	li	a2,1211
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC80)
	add	a0,a5,%lo(.LC80)
	call	_assert_fail
.L368:
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a3,-44(s0)
	li	a5,-4096
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_page_table_cap_set_capPTMappedObject, .-cap_page_table_cap_set_capPTMappedObject
	.align	2
	.type	cap_page_table_cap_get_capPTMappedIndex, @function
cap_page_table_cap_get_capPTMappedIndex:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L371
	lui	a5,%hi(__FUNCTION__.2214)
	add	a3,a5,%lo(__FUNCTION__.2214)
	li	a2,1221
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC79)
	add	a0,a5,%lo(.LC79)
	call	_assert_fail
.L371:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTMappedIndex, .-cap_page_table_cap_get_capPTMappedIndex
	.align	2
	.type	cap_page_table_cap_set_capPTMappedIndex, @function
cap_page_table_cap_set_capPTMappedIndex:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L374
	lui	a5,%hi(__FUNCTION__.2219)
	add	a3,a5,%lo(__FUNCTION__.2219)
	li	a2,1229
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC79)
	add	a0,a5,%lo(.LC79)
	call	_assert_fail
.L374:
	lw	a4,-44(s0)
	li	a5,-4096
	and	a5,a4,a5
	beqz	a5,.L375
	lui	a5,%hi(__FUNCTION__.2219)
	add	a3,a5,%lo(__FUNCTION__.2219)
	li	a2,1231
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC74)
	add	a0,a5,%lo(.LC74)
	call	_assert_fail
.L375:
	lw	a4,-36(s0)
	li	a5,-4096
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a3,-44(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_page_table_cap_set_capPTMappedIndex, .-cap_page_table_cap_set_capPTMappedIndex
	.align	2
	.type	cap_page_table_cap_get_capPTBasePtr, @function
cap_page_table_cap_get_capPTBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L378
	lui	a5,%hi(__FUNCTION__.2223)
	add	a3,a5,%lo(__FUNCTION__.2223)
	li	a2,1241
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC79)
	add	a0,a5,%lo(.LC79)
	call	_assert_fail
.L378:
	lw	a5,-24(s0)
	and	a5,a5,-1024
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTBasePtr, .-cap_page_table_cap_get_capPTBasePtr
	.section	.rodata
	.align	2
.LC81:
	.string	"(capPDBasePtr & ~0xfffffc00) == 0"
	.text
	.align	2
	.type	cap_page_directory_cap_new, @function
cap_page_directory_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,1023
	beqz	a5,.L381
	lui	a5,%hi(__FUNCTION__.2228)
	add	a3,a5,%lo(__FUNCTION__.2228)
	li	a2,1254
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC81)
	add	a0,a5,%lo(.LC81)
	call	_assert_fail
.L381:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	and	a5,a5,-1024
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_page_directory_cap_new, .-cap_page_directory_cap_new
	.section	.rodata
	.align	2
.LC82:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap"
	.text
	.align	2
	.type	cap_page_directory_cap_get_capPDBasePtr, @function
cap_page_directory_cap_get_capPDBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,5
	beq	a4,a5,.L384
	lui	a5,%hi(__FUNCTION__.2232)
	add	a3,a5,%lo(__FUNCTION__.2232)
	li	a2,1266
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC82)
	add	a0,a5,%lo(.LC82)
	call	_assert_fail
.L384:
	lw	a5,-24(s0)
	and	a5,a5,-1024
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_directory_cap_get_capPDBasePtr, .-cap_page_directory_cap_get_capPDBasePtr
	.align	2
	.type	cap_irq_control_cap_new, @function
cap_irq_control_cap_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,14
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_irq_control_cap_new, .-cap_irq_control_cap_new
	.section	.rodata
	.align	2
.LC83:
	.string	"(capIRQ & ~0xff) == 0"
	.text
	.align	2
	.type	cap_irq_handler_cap_new, @function
cap_irq_handler_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-256
	beqz	a5,.L389
	lui	a5,%hi(__FUNCTION__.2242)
	add	a3,a5,%lo(__FUNCTION__.2242)
	li	a2,1293
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC83)
	add	a0,a5,%lo(.LC83)
	call	_assert_fail
.L389:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,30
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_irq_handler_cap_new, .-cap_irq_handler_cap_new
	.section	.rodata
	.align	2
.LC84:
	.string	"((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap"
	.text
	.align	2
	.type	cap_irq_handler_cap_get_capIRQ, @function
cap_irq_handler_cap_get_capIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,30
	beq	a4,a5,.L392
	lui	a5,%hi(__FUNCTION__.2246)
	add	a3,a5,%lo(__FUNCTION__.2246)
	li	a2,1305
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	_assert_fail
.L392:
	lw	a5,-20(s0)
	and	a5,a5,255
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_irq_handler_cap_get_capIRQ, .-cap_irq_handler_cap_get_capIRQ
	.section	.rodata
	.align	2
.LC85:
	.string	"(capZombieType & ~0x3f) == 0"
	.text
	.align	2
	.type	cap_zombie_cap_new, @function
cap_zombie_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L395
	lui	a5,%hi(__FUNCTION__.2252)
	add	a3,a5,%lo(__FUNCTION__.2252)
	li	a2,1319
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC85)
	add	a0,a5,%lo(.LC85)
	call	_assert_fail
.L395:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,46
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_new, .-cap_zombie_cap_new
	.section	.rodata
	.align	2
.LC86:
	.string	"((cap.words[0] >> 0) & 0xff) == cap_zombie_cap"
	.text
	.align	2
	.type	cap_zombie_cap_get_capZombieID, @function
cap_zombie_cap_get_capZombieID:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L398
	lui	a5,%hi(__FUNCTION__.2256)
	add	a3,a5,%lo(__FUNCTION__.2256)
	li	a2,1331
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	_assert_fail
.L398:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_zombie_cap_get_capZombieID, .-cap_zombie_cap_get_capZombieID
	.align	2
	.type	cap_zombie_cap_set_capZombieID, @function
cap_zombie_cap_set_capZombieID:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L401
	lui	a5,%hi(__FUNCTION__.2261)
	add	a3,a5,%lo(__FUNCTION__.2261)
	li	a2,1339
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	_assert_fail
.L401:
	sw	zero,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_set_capZombieID, .-cap_zombie_cap_set_capZombieID
	.align	2
	.type	cap_zombie_cap_get_capZombieType, @function
cap_zombie_cap_get_capZombieType:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L404
	lui	a5,%hi(__FUNCTION__.2265)
	add	a3,a5,%lo(__FUNCTION__.2265)
	li	a2,1351
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	_assert_fail
.L404:
	lw	a4,-24(s0)
	li	a5,16384
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_zombie_cap_get_capZombieType, .-cap_zombie_cap_get_capZombieType
	.align	2
	.type	cap_domain_cap_new, @function
cap_domain_cap_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,62
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_domain_cap_new, .-cap_domain_cap_new
	.align	2
	.type	lookup_fault_get_lufType, @function
lookup_fault_get_lufType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_get_lufType, .-lookup_fault_get_lufType
	.align	2
	.type	lookup_fault_invalid_root_new, @function
lookup_fault_invalid_root_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_invalid_root_new, .-lookup_fault_invalid_root_new
	.section	.rodata
	.align	2
.LC87:
	.string	"(bitsLeft & ~0x3f) == 0"
	.text
	.align	2
	.type	lookup_fault_missing_capability_new, @function
lookup_fault_missing_capability_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-64
	beqz	a5,.L413
	lui	a5,%hi(__FUNCTION__.2292)
	add	a3,a5,%lo(__FUNCTION__.2292)
	li	a2,1410
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC87)
	add	a0,a5,%lo(.LC87)
	call	_assert_fail
.L413:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_missing_capability_new, .-lookup_fault_missing_capability_new
	.section	.rodata
	.align	2
.LC88:
	.string	"((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_missing_capability"
	.text
	.align	2
	.type	lookup_fault_missing_capability_get_bitsLeft, @function
lookup_fault_missing_capability_get_bitsLeft:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,1
	beq	a4,a5,.L416
	lui	a5,%hi(__FUNCTION__.2296)
	add	a3,a5,%lo(__FUNCTION__.2296)
	li	a2,1422
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC88)
	add	a0,a5,%lo(.LC88)
	call	_assert_fail
.L416:
	lw	a5,-24(s0)
	and	a5,a5,252
	srl	a5,a5,2
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_missing_capability_get_bitsLeft, .-lookup_fault_missing_capability_get_bitsLeft
	.section	.rodata
	.align	2
.LC89:
	.string	"(bitsFound & ~0x3f) == 0"
	.text
	.align	2
	.type	lookup_fault_depth_mismatch_new, @function
lookup_fault_depth_mismatch_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-64
	beqz	a5,.L419
	lui	a5,%hi(__FUNCTION__.2302)
	add	a3,a5,%lo(__FUNCTION__.2302)
	li	a2,1435
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC89)
	add	a0,a5,%lo(.LC89)
	call	_assert_fail
.L419:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L420
	lui	a5,%hi(__FUNCTION__.2302)
	add	a3,a5,%lo(__FUNCTION__.2302)
	li	a2,1438
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC87)
	add	a0,a5,%lo(.LC87)
	call	_assert_fail
.L420:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,2
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_depth_mismatch_new, .-lookup_fault_depth_mismatch_new
	.section	.rodata
	.align	2
.LC90:
	.string	"((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch"
	.text
	.align	2
	.type	lookup_fault_depth_mismatch_get_bitsFound, @function
lookup_fault_depth_mismatch_get_bitsFound:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,2
	beq	a4,a5,.L423
	lui	a5,%hi(__FUNCTION__.2306)
	add	a3,a5,%lo(__FUNCTION__.2306)
	li	a2,1450
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC90)
	add	a0,a5,%lo(.LC90)
	call	_assert_fail
.L423:
	lw	a4,-24(s0)
	li	a5,16384
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_depth_mismatch_get_bitsFound, .-lookup_fault_depth_mismatch_get_bitsFound
	.align	2
	.type	lookup_fault_depth_mismatch_get_bitsLeft, @function
lookup_fault_depth_mismatch_get_bitsLeft:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,2
	beq	a4,a5,.L426
	lui	a5,%hi(__FUNCTION__.2310)
	add	a3,a5,%lo(__FUNCTION__.2310)
	li	a2,1458
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC90)
	add	a0,a5,%lo(.LC90)
	call	_assert_fail
.L426:
	lw	a5,-24(s0)
	and	a5,a5,252
	srl	a5,a5,2
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_depth_mismatch_get_bitsLeft, .-lookup_fault_depth_mismatch_get_bitsLeft
	.align	2
	.type	lookup_fault_guard_mismatch_new, @function
lookup_fault_guard_mismatch_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L429
	lui	a5,%hi(__FUNCTION__.2317)
	add	a3,a5,%lo(__FUNCTION__.2317)
	li	a2,1472
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC87)
	add	a0,a5,%lo(.LC87)
	call	_assert_fail
.L429:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-64
	beqz	a5,.L430
	lui	a5,%hi(__FUNCTION__.2317)
	add	a3,a5,%lo(__FUNCTION__.2317)
	li	a2,1475
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC89)
	add	a0,a5,%lo(.LC89)
	call	_assert_fail
.L430:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,3
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_guard_mismatch_new, .-lookup_fault_guard_mismatch_new
	.section	.rodata
	.align	2
.LC91:
	.string	"((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch"
	.text
	.align	2
	.type	lookup_fault_guard_mismatch_get_guardFound, @function
lookup_fault_guard_mismatch_get_guardFound:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,3
	beq	a4,a5,.L433
	lui	a5,%hi(__FUNCTION__.2321)
	add	a3,a5,%lo(__FUNCTION__.2321)
	li	a2,1487
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC91)
	add	a0,a5,%lo(.LC91)
	call	_assert_fail
.L433:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_guard_mismatch_get_guardFound, .-lookup_fault_guard_mismatch_get_guardFound
	.align	2
	.type	lookup_fault_guard_mismatch_get_bitsLeft, @function
lookup_fault_guard_mismatch_get_bitsLeft:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,3
	beq	a4,a5,.L436
	lui	a5,%hi(__FUNCTION__.2325)
	add	a3,a5,%lo(__FUNCTION__.2325)
	li	a2,1495
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC91)
	add	a0,a5,%lo(.LC91)
	call	_assert_fail
.L436:
	lw	a4,-24(s0)
	li	a5,16384
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_guard_mismatch_get_bitsLeft, .-lookup_fault_guard_mismatch_get_bitsLeft
	.align	2
	.type	lookup_fault_guard_mismatch_get_bitsFound, @function
lookup_fault_guard_mismatch_get_bitsFound:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,3
	li	a5,3
	beq	a4,a5,.L439
	lui	a5,%hi(__FUNCTION__.2329)
	add	a3,a5,%lo(__FUNCTION__.2329)
	li	a2,1503
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC91)
	add	a0,a5,%lo(.LC91)
	call	_assert_fail
.L439:
	lw	a5,-24(s0)
	and	a5,a5,252
	srl	a5,a5,2
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_guard_mismatch_get_bitsFound, .-lookup_fault_guard_mismatch_get_bitsFound
	.section	.rodata
	.align	2
.LC92:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/arch/riscv/arch/machine/hardware.h"
	.align	2
.LC93:
	.string	"Invalid page size"
	.text
	.align	2
	.type	pageBitsForSize, @function
pageBitsForSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L443
	li	a4,1
	beq	a5,a4,.L444
	j	.L446
.L443:
	li	a5,12
	j	.L445
.L444:
	li	a5,22
	j	.L445
.L446:
	lui	a5,%hi(__func__.2364)
	add	a3,a5,%lo(__func__.2364)
	li	a2,114
	lui	a5,%hi(.LC92)
	add	a1,a5,%lo(.LC92)
	lui	a5,%hi(.LC93)
	add	a0,a5,%lo(.LC93)
	call	_fail
.L445:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	pageBitsForSize, .-pageBitsForSize
	.align	2
	.type	Arch_initContext, @function
Arch_initContext:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_initContext, .-Arch_initContext
	.align	2
	.type	sanitiseRegister, @function
sanitiseRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sanitiseRegister, .-sanitiseRegister
	.align	2
	.type	wordFromVMRights, @function
wordFromVMRights:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	wordFromVMRights, .-wordFromVMRights
	.align	2
	.type	cap_frame_cap_get_capFMappedObject, @function
cap_frame_cap_get_capFMappedObject:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObjectHigh
	mv	a5,a0
	sll	s1,a5,12
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObjectLow
	mv	a5,a0
	and	a5,a5,3
	sll	a5,a5,10
	or	a5,s1,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObject, .-cap_frame_cap_get_capFMappedObject
	.align	2
	.type	cap_frame_cap_set_capFMappedObject, @function
cap_frame_cap_set_capFMappedObject:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-44(s0)
	srl	a5,a5,12
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_set_capFMappedObjectHigh
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-44(s0)
	srl	a5,a5,10
	and	a5,a5,3
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_set_capFMappedObjectLow
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_frame_cap_set_capFMappedObject, .-cap_frame_cap_set_capFMappedObject
	.section	.rodata
	.align	2
.LC94:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/arch/riscv/arch/object/structures.h"
	.align	2
.LC95:
	.string	"!\"Unknown cap type\""
	.text
	.align	2
	.type	cap_get_archCapSizeBits, @function
cap_get_archCapSizeBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,3
	beq	a5,a4,.L458
	li	a4,5
	beq	a5,a4,.L459
	li	a4,1
	bne	a5,a4,.L462
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	mv	a0,a5
	call	pageBitsForSize
	mv	a5,a0
	j	.L461
.L458:
	li	a5,12
	j	.L461
.L459:
	li	a5,12
	j	.L461
.L462:
	lui	a5,%hi(__FUNCTION__.2499)
	add	a3,a5,%lo(__FUNCTION__.2499)
	li	a2,140
	lui	a5,%hi(.LC94)
	add	a1,a5,%lo(.LC94)
	lui	a5,%hi(.LC95)
	add	a0,a5,%lo(.LC95)
	call	_assert_fail
.L461:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_archCapSizeBits, .-cap_get_archCapSizeBits
	.align	2
	.type	cap_get_archCapPtr, @function
cap_get_archCapPtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,3
	beq	a5,a4,.L465
	li	a4,5
	beq	a5,a4,.L466
	li	a4,1
	bne	a5,a4,.L469
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	j	.L468
.L465:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	a5,a0
	j	.L468
.L466:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	j	.L468
.L469:
	lui	a5,%hi(__FUNCTION__.2508)
	add	a3,a5,%lo(__FUNCTION__.2508)
	li	a2,167
	lui	a5,%hi(.LC94)
	add	a1,a5,%lo(.LC94)
	lui	a5,%hi(.LC95)
	add	a0,a5,%lo(.LC95)
	call	_assert_fail
.L468:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_archCapPtr, .-cap_get_archCapPtr
	.align	2
	.type	cap_zombie_cap_get_capZombieBits, @function
cap_zombie_cap_get_capZombieBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,32
	bne	a4,a5,.L471
	li	a5,4
	j	.L472
.L471:
	lw	a5,-20(s0)
	and	a5,a5,31
.L472:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombieBits, .-cap_zombie_cap_get_capZombieBits
	.align	2
	.type	Zombie_new, @function
Zombie_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a4,-40(s0)
	li	a5,32
	bne	a4,a5,.L474
	li	a5,31
	sw	a5,-20(s0)
	j	.L475
.L474:
	lw	a5,-40(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-20(s0)
.L475:
	lw	a4,-44(s0)
	lw	a5,-36(s0)
	xor	a4,a4,a5
	lw	a5,-20(s0)
	and	a4,a4,a5
	lw	a5,-44(s0)
	xor	a5,a4,a5
	lw	a1,-40(s0)
	mv	a0,a5
	call	cap_zombie_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Zombie_new, .-Zombie_new
	.align	2
	.type	cap_zombie_cap_get_capZombieNumber, @function
cap_zombie_cap_get_capZombieNumber:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a5,a5,-1
	and	a5,a3,a5
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombieNumber, .-cap_zombie_cap_get_capZombieNumber
	.align	2
	.type	cap_zombie_cap_get_capZombiePtr, @function
cap_zombie_cap_get_capZombiePtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	sub	a5,zero,a5
	and	a5,a3,a5
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombiePtr, .-cap_zombie_cap_get_capZombiePtr
	.align	2
	.type	cap_zombie_cap_set_capZombieNumber, @function
cap_zombie_cap_set_capZombieNumber:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	sub	a5,zero,a5
	and	a5,a3,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a4,a5,-1
	lw	a5,-44(s0)
	and	a4,a4,a5
	lw	a5,-24(s0)
	or	a5,a4,a5
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_set_capZombieID
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	mv	a4,zero
	lw	a4,-32(s0)
	mv	a5,zero
	lw	a5,-28(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_set_capZombieNumber, .-cap_zombie_cap_set_capZombieNumber
	.align	2
	.type	mdb_node_get_cdtLeft, @function
mdb_node_get_cdtLeft:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLeft_
	mv	a5,a0
	sll	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L484
	lw	a4,-20(s0)
	li	a5,1073741824
	or	a5,a4,a5
	j	.L486
.L484:
	mv	a5,zero
.L486:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_get_cdtLeft, .-mdb_node_get_cdtLeft
	.align	2
	.type	mdb_node_get_cdtRight, @function
mdb_node_get_cdtRight:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight_
	mv	a5,a0
	sll	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L488
	lw	a4,-20(s0)
	li	a5,1073741824
	or	a5,a4,a5
	j	.L490
.L488:
	mv	a5,zero
.L490:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_get_cdtRight, .-mdb_node_get_cdtRight
	.section	.rodata
	.align	2
.LC96:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/object/structures.h"
	.align	2
.LC97:
	.string	"(cte & MASK(2)) == 0"
	.text
	.align	2
	.type	mdb_node_ptr_set_cdtLeft, @function
mdb_node_ptr_set_cdtLeft:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,3
	beqz	a5,.L492
	lui	a5,%hi(__FUNCTION__.2549)
	add	a3,a5,%lo(__FUNCTION__.2549)
	li	a2,173
	lui	a5,%hi(.LC96)
	add	a1,a5,%lo(.LC96)
	lui	a5,%hi(.LC97)
	add	a0,a5,%lo(.LC97)
	call	_assert_fail
.L492:
	lw	a4,-24(s0)
	li	a5,536870912
	add	a5,a5,-1
	and	a5,a4,a5
	srl	a5,a5,2
	mv	a1,a5
	lw	a0,-20(s0)
	call	mdb_node_ptr_set_cdtLeft_
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLeft, .-mdb_node_ptr_set_cdtLeft
	.align	2
	.type	mdb_node_ptr_set_cdtRight, @function
mdb_node_ptr_set_cdtRight:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,3
	beqz	a5,.L494
	lui	a5,%hi(__FUNCTION__.2554)
	add	a3,a5,%lo(__FUNCTION__.2554)
	li	a2,179
	lui	a5,%hi(.LC96)
	add	a1,a5,%lo(.LC96)
	lui	a5,%hi(.LC97)
	add	a0,a5,%lo(.LC97)
	call	_assert_fail
.L494:
	lw	a4,-24(s0)
	li	a5,536870912
	add	a5,a5,-1
	and	a5,a4,a5
	srl	a5,a5,2
	mv	a1,a5
	lw	a0,-20(s0)
	call	mdb_node_ptr_set_cdtRight_
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtRight, .-mdb_node_ptr_set_cdtRight
	.align	2
	.type	vmAttributesFromWord, @function
vmAttributesFromWord:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	vmAttributesFromWord, .-vmAttributesFromWord
	.align	2
	.type	isArchCap, @function
isArchCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	isArchCap, .-isArchCap
	.align	2
	.type	cap_get_capSizeBits, @function
cap_get_capSizeBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L500
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L502)
	add	a5,a5,%lo(.L502)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L502:
	.word	.L501
	.word	.L500
	.word	.L503
	.word	.L500
	.word	.L504
	.word	.L500
	.word	.L505
	.word	.L500
	.word	.L506
	.word	.L500
	.word	.L507
	.word	.L500
	.word	.L508
	.word	.L500
	.word	.L509
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L510
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L511
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L500
	.word	.L512
	.text
.L503:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a5,a0
	j	.L513
.L504:
	li	a5,4
	j	.L513
.L505:
	li	a5,4
	j	.L513
.L507:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a5,a0
	add	a5,a5,4
	j	.L513
.L508:
	li	a5,9
	j	.L513
.L511:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,32
	bne	a4,a5,.L514
	li	a5,9
	j	.L513
.L514:
	lw	a5,-24(s0)
	and	a5,a5,31
	add	a5,a5,4
	j	.L513
.L501:
	mv	a5,zero
	j	.L513
.L512:
	mv	a5,zero
	j	.L513
.L506:
	mv	a5,zero
	j	.L513
.L509:
	mv	a5,zero
	j	.L513
.L510:
	mv	a5,zero
	j	.L513
.L500:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_archCapSizeBits
	mv	a5,a0
.L513:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSizeBits, .-cap_get_capSizeBits
	.align	2
	.type	cap_get_capPtr, @function
cap_get_capPtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L516
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L518)
	add	a5,a5,%lo(.L518)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L518:
	.word	.L516
	.word	.L516
	.word	.L517
	.word	.L516
	.word	.L519
	.word	.L516
	.word	.L520
	.word	.L516
	.word	.L521
	.word	.L516
	.word	.L522
	.word	.L516
	.word	.L523
	.word	.L516
	.word	.L524
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L525
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L526
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L516
	.word	.L527
	.text
.L517:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	j	.L528
.L519:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	j	.L528
.L520:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	j	.L528
.L522:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	j	.L528
.L523:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	j	.L528
.L526:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	j	.L528
.L527:
	mv	a5,zero
	j	.L528
.L521:
	mv	a5,zero
	j	.L528
.L524:
	mv	a5,zero
	j	.L528
.L525:
	mv	a5,zero
	j	.L528
.L516:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_archCapPtr
	mv	a5,a0
.L528:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capPtr, .-cap_get_capPtr
	.align	2
	.type	cap_get_capBadge, @function
cap_get_capBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L531
	li	a4,6
	beq	a5,a4,.L532
	j	.L534
.L531:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	j	.L533
.L532:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	j	.L533
.L534:
	mv	a5,zero
.L533:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capBadge, .-cap_get_capBadge
	.section	.rodata
	.align	2
.LC98:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/arch/riscv/arch/object/capspace.h"
	.text
	.align	2
	.type	cap_get_capSpaceType, @function
cap_get_capSpaceType:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L536
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L538)
	add	a5,a5,%lo(.L538)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L538:
	.word	.L536
	.word	.L537
	.word	.L539
	.word	.L537
	.word	.L537
	.word	.L537
	.word	.L537
	.word	.L536
	.word	.L540
	.word	.L536
	.word	.L537
	.word	.L536
	.word	.L537
	.word	.L536
	.word	.L541
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L542
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L537
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L536
	.word	.L543
	.text
.L537:
	li	a5,1
	j	.L544
.L539:
	mv	a5,zero
	j	.L544
.L540:
	li	a5,2
	j	.L544
.L541:
	li	a5,3
	j	.L544
.L542:
	li	a5,3
	j	.L544
.L543:
	li	a5,4
	j	.L544
.L536:
	lui	a5,%hi(__FUNCTION__.2651)
	add	a3,a5,%lo(__FUNCTION__.2651)
	li	a2,56
	lui	a5,%hi(.LC98)
	add	a1,a5,%lo(.LC98)
	lui	a5,%hi(.LC95)
	add	a0,a5,%lo(.LC95)
	call	_assert_fail
.L544:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpaceType, .-cap_get_capSpaceType
	.align	2
	.type	cap_get_capSpacePtr, @function
cap_get_capSpacePtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L546
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L548)
	add	a5,a5,%lo(.L548)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L548:
	.word	.L546
	.word	.L547
	.word	.L547
	.word	.L547
	.word	.L547
	.word	.L547
	.word	.L547
	.word	.L546
	.word	.L549
	.word	.L546
	.word	.L547
	.word	.L546
	.word	.L547
	.word	.L546
	.word	.L550
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L551
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L547
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L546
	.word	.L552
	.text
.L547:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	j	.L553
.L549:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	j	.L553
.L550:
	mv	a5,zero
	j	.L553
.L551:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a5,a0
	j	.L553
.L552:
	mv	a5,zero
	j	.L553
.L546:
	lui	a5,%hi(__FUNCTION__.2670)
	add	a3,a5,%lo(__FUNCTION__.2670)
	li	a2,92
	lui	a5,%hi(.LC98)
	add	a1,a5,%lo(.LC98)
	lui	a5,%hi(.LC95)
	add	a0,a5,%lo(.LC95)
	call	_assert_fail
.L553:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpacePtr, .-cap_get_capSpacePtr
	.align	2
	.type	cap_get_capSpaceSize, @function
cap_get_capSpaceSize:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L555
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L557)
	add	a5,a5,%lo(.L557)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L557:
	.word	.L555
	.word	.L556
	.word	.L556
	.word	.L556
	.word	.L556
	.word	.L556
	.word	.L556
	.word	.L555
	.word	.L558
	.word	.L555
	.word	.L556
	.word	.L555
	.word	.L556
	.word	.L555
	.word	.L559
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L560
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L556
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L555
	.word	.L561
	.text
.L556:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSizeBits
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	j	.L562
.L558:
	li	a5,1
	j	.L562
.L559:
	li	a5,255
	j	.L562
.L560:
	li	a5,1
	j	.L562
.L561:
	li	a5,1
	j	.L562
.L555:
	lui	a5,%hi(__FUNCTION__.2689)
	add	a3,a5,%lo(__FUNCTION__.2689)
	li	a2,128
	lui	a5,%hi(.LC98)
	add	a1,a5,%lo(.LC98)
	lui	a5,%hi(.LC95)
	add	a0,a5,%lo(.LC95)
	call	_assert_fail
.L562:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpaceSize, .-cap_get_capSpaceSize
	.section	.rodata
	.align	2
.LC99:
	.string	"Unknown frame size"
	.text
	.align	2
	.type	cap_get_capExtraComp, @function
cap_get_capExtraComp:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L565
	li	a4,3
	beq	a5,a4,.L566
	j	.L573
.L565:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	bnez	a5,.L567
	mv	a5,zero
	j	.L568
.L567:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	beqz	a5,.L570
	li	a4,1
	beq	a5,a4,.L571
	j	.L574
.L570:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L568
.L571:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L568
.L574:
	lui	a5,%hi(__func__.2697)
	add	a3,a5,%lo(__func__.2697)
	li	a2,148
	lui	a5,%hi(.LC98)
	add	a1,a5,%lo(.LC98)
	lui	a5,%hi(.LC99)
	add	a0,a5,%lo(.LC99)
	call	_fail
.L566:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedObject
	mv	a5,a0
	bnez	a5,.L572
	mv	a5,zero
	j	.L568
.L572:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L568
.L573:
	mv	a5,zero
.L568:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capExtraComp, .-cap_get_capExtraComp
	.align	2
	.type	cte_depth_bits_type, @function
cte_depth_bits_type:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,1
	beq	a5,a4,.L577
	li	a4,3
	bne	a5,a4,.L579
.L577:
	li	a5,1
	j	.L578
.L579:
	li	a5,5
.L578:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cte_depth_bits_type, .-cte_depth_bits_type
	.align	2
	.type	cte_depth_bits_cap, @function
cte_depth_bits_cap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	mv	a0,a5
	call	cte_depth_bits_type
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cte_depth_bits_cap, .-cte_depth_bits_cap
	.align	2
	.globl	plogf
	.type	plogf, @function
plogf:
	add	sp,sp,-80
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	add	a5,s0,32
	add	a5,a5,-28
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprintf
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,80
	jr	ra
	.size	plogf, .-plogf
	.globl	riscvKSGlobalsFrame
	.section	.bss.aligned,"aw",@nobits
	.align	12
	.type	riscvKSGlobalsFrame, @object
	.size	riscvKSGlobalsFrame, 4096
riscvKSGlobalsFrame:
	.zero	4096
	.text
	.align	2
	.type	clearMemory, @function
clearMemory:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,1
	lw	a5,-24(s0)
	sll	a5,a4,a5
	mv	a1,a5
	lw	a0,-20(s0)
	call	memzero
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	clearMemory, .-clearMemory
	.align	2
	.type	setCurrentPD, @function
setCurrentPD:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
 #APP
# 1028 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/arch/riscv/arch/machine.h" 1
	csrw sptbr, a5
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setCurrentPD, .-setCurrentPD
	.comm	platform_interrupt_t,4,4
	.align	2
	.type	setRegister, @function
setRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setRegister, .-setRegister
	.align	2
	.type	getRegister, @function
getRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getRegister, .-getRegister
	.align	2
	.type	ptrFromPAddr, @function
ptrFromPAddr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,1056964608
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	ptrFromPAddr, .-ptrFromPAddr
	.align	2
	.type	addrFromPPtr, @function
addrFromPPtr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1056964608
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	addrFromPPtr, .-addrFromPPtr
	.align	2
	.type	setInterruptMode, @function
setInterruptMode:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setInterruptMode, .-setInterruptMode
	.align	2
	.type	pptr_to_paddr, @function
pptr_to_paddr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1056964608
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pptr_to_paddr, .-pptr_to_paddr
	.align	2
	.type	paddr_to_pptr_reg, @function
paddr_to_pptr_reg:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a4,-40(s0)
	li	a5,1056964608
	add	a4,a4,a5
	lw	a3,-36(s0)
	li	a5,1056964608
	add	a5,a3,a5
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	paddr_to_pptr_reg, .-paddr_to_pptr_reg
	.align	2
	.type	inKernelWindow, @function
inKernelWindow:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	pptr_to_paddr
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,16777216
	bltu	a4,a5,.L598
	lw	a4,-20(s0)
	li	a5,281018368
	bgeu	a4,a5,.L598
	li	a5,1
	j	.L599
.L598:
	mv	a5,zero
.L599:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	inKernelWindow, .-inKernelWindow
	.section	.rodata
	.align	2
.LC100:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/api/syscall.h"
	.align	2
.LC101:
	.string	"ipc_buffer != NULL"
	.text
	.align	2
	.type	getSyscallArg, @function
getSyscallArg:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L602
	lui	a5,%hi(ksCurThread)
	lw	a3,%lo(ksCurThread)(a5)
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	getRegister
	mv	a5,a0
	j	.L603
.L602:
	lw	a5,-24(s0)
	bnez	a5,.L604
	lui	a5,%hi(__FUNCTION__.3330)
	add	a3,a5,%lo(__FUNCTION__.3330)
	li	a2,33
	lui	a5,%hi(.LC100)
	add	a1,a5,%lo(.LC100)
	lui	a5,%hi(.LC101)
	add	a0,a5,%lo(.LC101)
	call	_assert_fail
.L604:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
.L603:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	getSyscallArg, .-getSyscallArg
	.section	.rodata
	.align	2
.LC102:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/include/kernel/thread.h"
	.align	2
.LC103:
	.string	"dom == 0"
	.text
	.align	2
	.type	ready_queues_index, @function
ready_queues_index:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L606
	lui	a5,%hi(__FUNCTION__.3611)
	add	a3,a5,%lo(__FUNCTION__.3611)
	li	a2,24
	lui	a5,%hi(.LC102)
	add	a1,a5,%lo(.LC102)
	lui	a5,%hi(.LC103)
	add	a0,a5,%lo(.LC103)
	call	_assert_fail
.L606:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ready_queues_index, .-ready_queues_index
	.align	2
	.type	prio_to_l1index, @function
prio_to_l1index:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	prio_to_l1index, .-prio_to_l1index
	.align	2
	.type	l1index_to_prio, @function
l1index_to_prio:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	l1index_to_prio, .-l1index_to_prio
	.section	.rodata
	.align	2
.LC104:
	.string	"Spurious interrupt"
	.text
	.align	2
	.globl	handleInterruptEntry
	.type	handleInterruptEntry, @function
handleInterruptEntry:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	call	getActiveIRQ
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,3
	beq	a4,a5,.L613
	lw	a0,-20(s0)
	call	handleInterrupt
	j	.L614
.L613:
	lui	a5,%hi(.LC104)
	add	a0,a5,%lo(.LC104)
	call	puts
	call	handleSpuriousIRQ
.L614:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleInterruptEntry, .-handleInterruptEntry
	.section	.rodata
	.align	2
.LC105:
	.string	"Debug halt syscall from user thread 0x%x\n"
	.align	2
.LC106:
	.string	"Debug snapshot syscall from user thread 0x%x\n"
	.text
	.align	2
	.globl	handleUnknownSyscall
	.type	handleUnknownSyscall, @function
handleUnknownSyscall:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a4,-52(s0)
	li	a5,-10
	bne	a4,a5,.L617
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,10
	mv	a0,a5
	call	getRegister
	mv	a5,a0
	and	a5,a5,0xff
	mv	a0,a5
	call	putDebugChar
	mv	a5,zero
	j	.L618
.L617:
	lw	a4,-52(s0)
	li	a5,-11
	bne	a4,a5,.L619
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC105)
	add	a0,a5,%lo(.LC105)
	call	printf
	call	halt
.L619:
	lw	a4,-52(s0)
	li	a5,-13
	bne	a4,a5,.L620
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC106)
	add	a0,a5,%lo(.LC106)
	call	printf
	call	capDL
	mv	a5,zero
	j	.L618
.L620:
	lw	a4,-52(s0)
	li	a5,-12
	bne	a4,a5,.L621
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,10
	mv	a0,a5
	call	getRegister
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	add	a5,s0,-40
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	lookupCapAndSlot
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	sw	a0,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-24(s0)
	li	a1,10
	mv	a0,a5
	call	setRegister
	mv	a5,zero
	j	.L618
.L621:
	lw	a0,-52(s0)
	call	fault_unknown_syscall_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	call	schedule
	call	activateThread
	mv	a5,zero
.L618:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	handleUnknownSyscall, .-handleUnknownSyscall
	.align	2
	.globl	handleUserLevelFault
	.type	handleUserLevelFault, @function
handleUserLevelFault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fault_user_exception_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleUserLevelFault, .-handleUserLevelFault
	.align	2
	.globl	handleVMFaultEvent
	.type	handleVMFaultEvent, @function
handleVMFaultEvent:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	handleVMFault
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L625
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
.L625:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleVMFaultEvent, .-handleVMFaultEvent
	.section	.rodata
	.align	2
.LC107:
	.string	"\033[0m\033[30;1m<<\033[0m\033[32mseL4\033[0m\033[30;1m [%s/%d T%x @%x]: "
	.align	2
.LC108:
	.string	"Invocation of invalid cap #%d."
	.align	2
.LC109:
	.string	">>\033[0m"
	.align	2
.LC110:
	.string	"Lookup of extra caps failed."
	.text
	.align	2
	.type	handleInvocation, @function
handleInvocation:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	add	s0,sp,112
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	sw	a5,-24(s0)
	li	a1,11
	lw	a0,-24(s0)
	call	getRegister
	mv	a5,a0
	mv	a0,a5
	call	messageInfoFromWord
	mv	a5,a0
	sw	a5,-40(s0)
	li	a1,10
	lw	a0,-24(s0)
	call	getRegister
	sw	a0,-28(s0)
	add	a5,s0,-56
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	lookupCapAndSlot
	lw	a5,-56(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L628
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,190
	lui	a5,%hi(__func__.3711)
	add	a1,a5,%lo(__func__.3711)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-28(s0)
	mv	a1,a5
	lui	a5,%hi(.LC108)
	add	a0,a5,%lo(.LC108)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	mv	a1,zero
	lw	a0,-28(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lw	a5,-72(s0)
	beqz	a5,.L629
	lw	a0,-24(s0)
	call	handleFault
.L629:
	mv	a5,zero
	j	.L639
.L628:
	lw	a1,-24(s0)
	mv	a0,zero
	call	lookupIPCBuffer
	sw	a0,-32(s0)
	lw	a2,-40(s0)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	lookupExtraCaps
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L631
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,205
	lui	a5,%hi(__func__.3711)
	add	a1,a5,%lo(__func__.3711)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC110)
	add	a0,a5,%lo(.LC110)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-72(s0)
	beqz	a5,.L632
	lw	a0,-24(s0)
	call	handleFault
.L632:
	mv	a5,zero
	j	.L639
.L631:
	lw	a0,-40(s0)
	call	message_info_get_msgLength
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sltu	a5,a5,5
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L633
	lw	a5,-32(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L633
	li	a5,4
	sw	a5,-20(s0)
.L633:
	lw	a0,-40(s0)
	call	message_info_get_msgLabel
	lw	a3,-44(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-96(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-92(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-88(s0)
	add	a4,s0,-96
	lw	a5,-32(s0)
	sw	a5,4(sp)
	lw	a5,-68(s0)
	sw	a5,0(sp)
	lw	a7,-72(s0)
	mv	a6,a4
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	call	decodeInvocation
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	add	a5,a5,-4
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L634
	lw	a5,-36(s0)
	j	.L639
.L634:
	lw	a5,-36(s0)
	add	a5,a5,-3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L635
	lw	a5,-68(s0)
	beqz	a5,.L636
	lw	a0,-24(s0)
	call	replyFromKernel_error
.L636:
	mv	a5,zero
	j	.L639
.L635:
	lw	a5,-24(s0)
	lw	a4,132(a5)
	sw	a4,-96(s0)
	lw	a4,136(a5)
	sw	a4,-92(s0)
	lw	a5,140(a5)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	add	a5,a5,-2
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L637
	lw	a5,-68(s0)
	beqz	a5,.L638
	lw	a0,-24(s0)
	call	replyFromKernel_success_empty
.L638:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
.L637:
	mv	a5,zero
.L639:
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	add	sp,sp,112
	jr	ra
	.size	handleInvocation, .-handleInvocation
	.section	.rodata
	.align	2
.LC111:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/api/syscall.c"
	.align	2
.LC112:
	.string	"caller != ksCurThread"
	.align	2
.LC113:
	.string	"Attempted reply operation when no reply cap present."
	.align	2
.LC114:
	.string	"handleReply: invalid caller cap"
	.text
	.align	2
	.type	handleReply, @function
handleReply:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L642
	li	a4,8
	beq	a5,a4,.L643
	j	.L645
.L643:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	bnez	a5,.L649
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L646
	lui	a5,%hi(__FUNCTION__.3720)
	add	a3,a5,%lo(__FUNCTION__.3720)
	li	a2,262
	lui	a5,%hi(.LC111)
	add	a1,a5,%lo(.LC111)
	lui	a5,%hi(.LC112)
	add	a0,a5,%lo(.LC112)
	call	_assert_fail
.L646:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	doReplyTransfer
	j	.L640
.L642:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,269
	lui	a5,%hi(__func__.3722)
	add	a1,a5,%lo(__func__.3722)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC113)
	add	a0,a5,%lo(.LC113)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	j	.L640
.L649:
	nop
.L645:
	lui	a5,%hi(__func__.3722)
	add	a3,a5,%lo(__func__.3722)
	li	a2,276
	lui	a5,%hi(.LC111)
	add	a1,a5,%lo(.LC111)
	lui	a5,%hi(.LC114)
	add	a0,a5,%lo(.LC114)
	call	_fail
.L640:
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	handleReply, .-handleReply
	.align	2
	.type	handleWait, @function
handleWait:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	deleteCallerCap
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,10
	mv	a0,a5
	call	getRegister
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	add	a5,s0,-40
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	lookupCap
	lw	a5,-40(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L651
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L650
.L651:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L654
	li	a4,6
	beq	a5,a4,.L655
	j	.L663
.L654:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L656
	lw	a5,-52(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L657
.L656:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L650
.L657:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	receiveIPC
	j	.L650
.L655:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L659
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L660
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L660
	li	a5,1
	j	.L661
.L660:
	mv	a5,zero
.L661:
	beqz	a5,.L662
.L659:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L650
.L662:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a3,-52(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	receiveAsyncIPC
	j	.L650
.L663:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	nop
.L650:
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	handleWait, .-handleWait
	.align	2
	.type	handleYield, @function
handleYield:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedDequeue
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedAppend
	call	rescheduleRequired
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	handleYield, .-handleYield
	.section	.rodata
	.align	2
.LC115:
	.string	"Invalid syscall"
	.text
	.align	2
	.globl	handleSyscall
	.type	handleSyscall, @function
handleSyscall:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	li	a4,7
	bgtu	a5,a4,.L666
	sll	a4,a5,2
	lui	a5,%hi(.L668)
	add	a5,a5,%lo(.L668)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L668:
	.word	.L667
	.word	.L669
	.word	.L670
	.word	.L671
	.word	.L672
	.word	.L673
	.word	.L674
	.word	.L675
	.text
.L673:
	li	a1,1
	mv	a0,zero
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L681
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L681
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L681
.L672:
	mv	a1,zero
	mv	a0,zero
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L682
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L682
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L682
.L675:
	li	a1,1
	li	a0,1
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L683
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L683
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L683
.L671:
	li	a0,1
	call	handleWait
	j	.L677
.L670:
	call	handleReply
	j	.L677
.L674:
	call	handleReply
	li	a0,1
	call	handleWait
	j	.L677
.L667:
	mv	a0,zero
	call	handleWait
	j	.L677
.L669:
	call	handleYield
	j	.L677
.L666:
	lui	a5,%hi(__func__.3753)
	add	a3,a5,%lo(__func__.3753)
	li	a2,400
	lui	a5,%hi(.LC111)
	add	a1,a5,%lo(.LC111)
	lui	a5,%hi(.LC115)
	add	a0,a5,%lo(.LC115)
	call	_fail
.L681:
	nop
	j	.L677
.L682:
	nop
	j	.L677
.L683:
	nop
.L677:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleSyscall, .-handleSyscall
	.align	2
	.globl	handleFaultReply
	.type	handleFaultReply, @function
handleFaultReply:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	handleFaultReply, .-handleFaultReply
	.align	2
	.type	is_reg_empty, @function
is_reg_empty:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	is_reg_empty, .-is_reg_empty
	.globl	test_area
	.section	.boot.data,"aw",@progbits
	.align	22
	.type	test_area, @object
	.size	test_area, 4096
test_area:
	.zero	4096
	.comm	kernel_elf,4,4
	.section	.boot.text,"ax",@progbits
	.align	2
	.globl	create_unmapped_it_frame_cap
	.type	create_unmapped_it_frame_cap, @function
create_unmapped_it_frame_cap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	create_unmapped_it_frame_cap, .-create_unmapped_it_frame_cap
	.align	2
	.globl	create_mapped_it_frame_cap
	.type	create_mapped_it_frame_cap, @function
create_mapped_it_frame_cap:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	add	s0,sp,112
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-96(s0)
	srl	a5,a5,22
	sw	a5,-40(s0)
	lw	a5,-96(s0)
	srl	a5,a5,12
	and	a5,a5,1023
	sw	a5,-44(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	call	pde_get_ppn1
	sw	a0,-48(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	call	pde_get_ppn0
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	sll	a4,a5,10
	lw	a5,-52(s0)
	or	a5,a4,a5
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	sll	a5,a5,12
	sw	a5,-56(s0)
	lw	a0,-56(s0)
	call	ptrFromPAddr
	sw	a0,-60(s0)
	lw	a5,-60(s0)
	srl	s1,a5,12
	li	a0,3
	call	wordFromVMRights
	mv	a3,a0
	lw	a5,-60(s0)
	srl	a5,a5,10
	and	a4,a5,3
	lw	a5,-92(s0)
	mv	a2,zero
	lw	a1,-44(s0)
	mv	a0,s1
	call	cap_frame_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-76(s0)
	sw	a5,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	map_it_frame_cap
	lw	a5,-76(s0)
	sw	a5,-68(s0)
	lw	a5,-72(s0)
	sw	a5,-64(s0)
	mv	a4,zero
	lw	a4,-68(s0)
	mv	a5,zero
	lw	a5,-64(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	add	sp,sp,112
	jr	ra
	.size	create_mapped_it_frame_cap, .-create_mapped_it_frame_cap
	.align	2
	.globl	create_mapped_it__bare_frame_cap
	.type	create_mapped_it__bare_frame_cap, @function
create_mapped_it__bare_frame_cap:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	add	s0,sp,112
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	sw	a4,-100(s0)
	sw	a5,-104(s0)
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-96(s0)
	srl	a5,a5,22
	sw	a5,-40(s0)
	lw	a5,-96(s0)
	srl	a5,a5,12
	and	a5,a5,1023
	sw	a5,-44(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	call	pde_get_ppn1
	sw	a0,-48(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a0,0(a5)
	call	pde_get_ppn0
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	sll	a4,a5,10
	lw	a5,-52(s0)
	or	a5,a4,a5
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	sll	a5,a5,12
	sw	a5,-56(s0)
	lw	a0,-56(s0)
	call	ptrFromPAddr
	sw	a0,-60(s0)
	lw	a5,-60(s0)
	srl	s1,a5,12
	li	a0,3
	call	wordFromVMRights
	mv	a3,a0
	lw	a5,-60(s0)
	srl	a5,a5,10
	and	a4,a5,3
	lw	a5,-92(s0)
	mv	a2,zero
	lw	a1,-44(s0)
	mv	a0,s1
	call	cap_frame_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-76(s0)
	sw	a5,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	map_it_bare_frame_cap
	lw	a5,-76(s0)
	sw	a5,-68(s0)
	lw	a5,-72(s0)
	sw	a5,-64(s0)
	mv	a4,zero
	lw	a4,-68(s0)
	mv	a5,zero
	lw	a5,-64(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	add	sp,sp,112
	jr	ra
	.size	create_mapped_it__bare_frame_cap, .-create_mapped_it__bare_frame_cap
	.align	2
	.type	create_it_page_table_cap, @function
create_it_page_table_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	lw	a5,-64(s0)
	srl	a5,a5,22
	sw	a5,-20(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	lw	a2,-60(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	cap_page_table_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	map_it_pt_cap
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,52(sp)
	lw	s3,48(sp)
	add	sp,sp,64
	jr	ra
	.size	create_it_page_table_cap, .-create_it_page_table_cap
	.align	2
	.type	create_it_address_space, @function
create_it_address_space:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	sw	a2,-80(s0)
	sw	a3,-76(s0)
	li	a0,12
	call	alloc_region
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L696
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	j	.L702
.L696:
	lw	a5,-24(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	lw	a5,-24(s0)
	mv	a0,a5
	call	copyGlobalMappings
	lw	a0,-24(s0)
	call	cap_page_directory_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,48
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	mv	a0,a5
	call	write_slot
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lw	a4,-80(s0)
	li	a5,-1048576
	and	a5,a4,a5
	sw	a5,-20(s0)
	j	.L698
.L701:
	li	a0,12
	call	alloc_region
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L699
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	j	.L702
.L699:
	lw	a5,-32(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	lw	a3,-20(s0)
	lw	a2,-32(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	create_it_page_table_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	provide_cap
	mv	a5,a0
	bnez	a5,.L700
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	j	.L702
.L700:
	lw	a4,-20(s0)
	li	a5,1048576
	add	a5,a4,a5
	sw	a5,-20(s0)
.L698:
	lw	a4,-76(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L701
	li	a0,12
	call	alloc_region
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	li	a3,268435456
	lw	a2,-32(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	create_it_page_table_cap
	li	a0,12
	call	alloc_region
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	li	a3,-268435456
	lw	a2,-32(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	create_it_page_table_cap
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-36(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-28(s0)
	sw	a4,48(a5)
	lw	a4,-36(s0)
	sw	a4,52(a5)
	lw	a5,-24(s0)
	mv	a0,a5
	call	addrFromPPtr
	mv	a5,a0
	mv	a0,a5
	call	setCurrentPD
	lw	a5,-60(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	sw	a5,-48(s0)
.L702:
	mv	a4,zero
	lw	a4,-52(s0)
	mv	a5,zero
	lw	a5,-48(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	create_it_address_space, .-create_it_address_space
	.section	.rodata
	.align	2
.LC116:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c"
	.align	2
.LC117:
	.string	"result"
	.section	.boot.text
	.align	2
	.type	insert_region_excluded, @function
insert_region_excluded:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	lw	a4,-64(s0)
	lw	a5,-56(s0)
	bgeu	a4,a5,.L704
	sw	zero,-52(s0)
	sw	zero,-56(s0)
	lw	a4,-60(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L706
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	j	.L706
.L704:
	lw	a4,-52(s0)
	lw	a5,-64(s0)
	bleu	a4,a5,.L707
	lw	a5,-64(s0)
	sw	a5,-52(s0)
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	j	.L706
.L707:
	sw	zero,-36(s0)
	sw	zero,-32(s0)
.L706:
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	bgeu	a4,a5,.L708
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	insert_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L708
	lui	a5,%hi(__FUNCTION__.3952)
	add	a3,a5,%lo(__FUNCTION__.3952)
	li	a2,257
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC117)
	add	a0,a5,%lo(.LC117)
	call	_assert_fail
.L708:
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L709
	lw	a5,-32(s0)
	sw	a5,-36(s0)
.L709:
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,52(sp)
	lw	s3,48(sp)
	add	sp,sp,64
	jr	ra
	.size	insert_region_excluded, .-insert_region_excluded
	.section	.rodata
	.align	2
.LC118:
	.string	"res_reg[0].start < res_reg[0].end"
	.align	2
.LC119:
	.string	"res_reg[1].start < res_reg[1].end"
	.align	2
.LC120:
	.string	"res_reg[0].end <= res_reg[1].start"
	.section	.boot.text
	.align	2
	.type	init_freemem, @function
init_freemem:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	li	a5,1073741824
	sw	a5,-56(s0)
	lui	a5,%hi(ki_end)
	add	a5,a5,%lo(ki_end)
	sw	a5,-52(s0)
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	lw	a5,-68(s0)
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L712
.L713:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	sw	zero,0(a5)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L712:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L713
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L714
	lui	a5,%hi(__FUNCTION__.3964)
	add	a3,a5,%lo(__FUNCTION__.3964)
	li	a2,289
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC118)
	add	a0,a5,%lo(.LC118)
	call	_assert_fail
.L714:
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L715
	lui	a5,%hi(__FUNCTION__.3964)
	add	a3,a5,%lo(__FUNCTION__.3964)
	li	a2,290
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC119)
	add	a0,a5,%lo(.LC119)
	call	_assert_fail
.L715:
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	bleu	a4,a5,.L716
	lui	a5,%hi(__FUNCTION__.3964)
	add	a3,a5,%lo(__FUNCTION__.3964)
	li	a2,292
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC120)
	add	a0,a5,%lo(.LC120)
	call	_assert_fail
.L716:
	sw	zero,-20(s0)
	j	.L717
.L721:
	lw	a0,-20(s0)
	call	get_avail_p_reg
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	paddr_to_pptr_reg
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	mv	a0,a5
	call	pptr_to_paddr
	mv	a4,a0
	li	a5,281018368
	bleu	a4,a5,.L718
	li	a5,1337982976
	sw	a5,-36(s0)
.L718:
	lw	a5,-40(s0)
	mv	a0,a5
	call	pptr_to_paddr
	mv	a4,a0
	li	a5,281018368
	bleu	a4,a5,.L719
	li	a5,1337982976
	sw	a5,-40(s0)
.L719:
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	insert_region_excluded
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	insert_region_excluded
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	beq	a4,a5,.L720
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	insert_region
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L720
	lui	a5,%hi(__FUNCTION__.3964)
	add	a3,a5,%lo(__FUNCTION__.3964)
	li	a2,311
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC117)
	add	a0,a5,%lo(.LC117)
	call	_assert_fail
.L720:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L717:
	call	get_num_avail_p_regs
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L721
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	init_freemem, .-init_freemem
	.align	2
	.type	init_irqs, @function
init_irqs:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	zero,-20(s0)
	j	.L723
.L724:
	lw	a1,-20(s0)
	mv	a0,zero
	call	setIRQState
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L723:
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L724
	li	a1,1
	li	a0,2
	call	setIRQState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	s1,a5,64
	call	cap_irq_control_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	mv	a0,s1
	call	write_slot
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	init_irqs, .-init_irqs
	.align	2
	.type	create_device_frames, @function
create_device_frames:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	li	a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	create_device_frames, .-create_device_frames
	.align	2
	.type	init_cpu, @function
init_cpu:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	init_cpu, .-init_cpu
	.align	2
	.type	init_plat, @function
init_plat:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	call	initIRQController
	call	initTimer
	call	initL2Cache
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	init_plat, .-init_plat
	.section	.rodata
	.align	2
.LC121:
	.string	"Bootstrapping kernel"
	.align	2
.LC122:
	.string	"Construct an initial address space"
	.align	2
.LC123:
	.string	"cap == null "
	.align	2
.LC124:
	.string	"Create and map bootinfo frame cap "
	.align	2
.LC125:
	.string	"Create the initial thread's IPC buffer "
	.section	.boot.text
	.align	2
	.type	try_init_kernel, @function
try_init_kernel:
	add	sp,sp,-160
	sw	ra,156(sp)
	sw	s0,152(sp)
	add	s0,sp,160
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-144(s0)
	lui	a5,%hi(.LC121)
	add	a0,a5,%lo(.LC121)
	call	puts
	lw	a5,-132(s0)
	sw	a5,-60(s0)
	lw	a5,-136(s0)
	sw	a5,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	paddr_to_pptr_reg
	mv	a4,a0
	mv	a5,a1
	sw	a4,-92(s0)
	sw	a5,-88(s0)
	lw	a5,-140(s0)
	lw	a4,-132(s0)
	sub	a5,a4,a5
	sw	a5,-112(s0)
	lw	a5,-140(s0)
	lw	a4,-136(s0)
	sub	a5,a4,a5
	sw	a5,-108(s0)
	lw	a5,-108(s0)
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-112(s0)
	sw	a5,-120(s0)
	lw	a4,-24(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-116(s0)
	call	map_kernel_window
	call	init_cpu
	lw	a0,-92(s0)
	lw	a1,-88(s0)
	call	init_freemem
	call	create_root_cnode
	mv	a4,a0
	mv	a5,a1
	sw	a4,-68(s0)
	sw	a5,-64(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L730
	mv	a5,zero
	j	.L743
.L730:
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_domain_cap
	call	create_irq_cnode
	mv	a5,a0
	bnez	a5,.L732
	mv	a5,zero
	j	.L743
.L732:
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	init_irqs
	lw	a2,-20(s0)
	li	a1,1
	mv	a0,zero
	call	allocate_bi_frame
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	bnez	a5,.L733
	mv	a5,zero
	j	.L743
.L733:
	lui	a5,%hi(.LC122)
	add	a0,a5,%lo(.LC122)
	call	puts
	lw	a2,-120(s0)
	lw	a3,-116(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_it_address_space
	mv	a4,a0
	mv	a5,a1
	sw	a4,-76(s0)
	sw	a5,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L734
	lui	a5,%hi(.LC123)
	add	a0,a5,%lo(.LC123)
	call	puts
	mv	a5,zero
	j	.L743
.L734:
	lui	a5,%hi(.LC124)
	add	a0,a5,%lo(.LC124)
	call	puts
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_bi_frame_cap
	lui	a5,%hi(.LC125)
	add	a0,a5,%lo(.LC125)
	call	puts
	lw	a4,-20(s0)
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_ipcbuf_frame
	mv	a4,a0
	mv	a5,a1
	sw	a4,-84(s0)
	sw	a5,-80(s0)
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L735
	mv	a5,zero
	j	.L743
.L735:
	add	a0,s0,-104
	lw	a5,-140(s0)
	sw	a5,0(sp)
	li	a7,1
	lw	a5,-92(s0)
	lw	a6,-88(s0)
	lw	a3,-76(s0)
	lw	a4,-72(s0)
	lw	a1,-68(s0)
	lw	a2,-64(s0)
	call	create_frames_of_region
	lw	a5,-96(s0)
	bnez	a5,.L736
	mv	a5,zero
	j	.L743
.L736:
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-104(s0)
	sw	a4,32(a5)
	lw	a4,-100(s0)
	sw	a4,36(a5)
	mv	a5,zero
	mv	a4,zero
	li	a3,-268435456
	li	a2,-268435456
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	create_mapped_it__bare_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L737
	mv	a5,zero
	j	.L743
.L737:
	mv	a5,zero
	mv	a4,zero
	li	a3,-268431360
	li	a2,-268431360
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	create_mapped_it__bare_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L738
	mv	a5,zero
	j	.L743
.L738:
	lw	a5,-96(s0)
	bnez	a5,.L739
	mv	a5,zero
	j	.L743
.L739:
	call	create_idle_thread
	mv	a5,a0
	bnez	a5,.L740
	mv	a5,zero
	j	.L743
.L740:
	lw	a5,-80(s0)
	sw	a5,0(sp)
	lw	a7,-84(s0)
	lw	a6,-20(s0)
	lw	a5,-24(s0)
	lw	a4,-144(s0)
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_initial_thread
	mv	a5,a0
	bnez	a5,.L741
	mv	a5,zero
	j	.L743
.L741:
	li	a5,1073741824
	sw	a5,-36(s0)
	lui	a5,%hi(ki_boot_end)
	add	a5,a5,%lo(ki_boot_end)
	sw	a5,-32(s0)
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_untypeds
	mv	a5,a0
	bnez	a5,.L742
	mv	a5,zero
	j	.L743
.L742:
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	sw	zero,24(a5)
	sw	zero,28(a5)
	call	bi_finalise
	li	a5,1
.L743:
	mv	a0,a5
	lw	ra,156(sp)
	lw	s0,152(sp)
	add	sp,sp,160
	jr	ra
	.size	try_init_kernel, .-try_init_kernel
	.text
	.align	2
	.globl	blt_test
	.type	blt_test, @function
blt_test:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
.L745:
	lw	a5,-20(s0)
	bgez	a5,.L745
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	blt_test, .-blt_test
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L747
.L749:
	lw	a5,-36(s0)
	sll	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L747:
	lw	a5,-36(s0)
	bltz	a5,.L748
	lw	a4,-20(s0)
	li	a5,32
	bleu	a4,a5,.L749
.L748:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L752
.L754:
	lw	a5,-36(s0)
	srl	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L752:
	lw	a5,-36(s0)
	and	a5,a5,1
	bnez	a5,.L753
	lw	a4,-20(s0)
	li	a5,32
	bleu	a4,a5,.L754
.L753:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	__ctzsi2, .-__ctzsi2
	.section	.rodata
	.align	2
.LC126:
	.string	"********* seL4 microkernel on RISC-V 32-bit platform *********"
	.align	2
.LC127:
	.string	"Kernel init failed for some reason :("
	.section	.boot.text
	.align	2
	.globl	init_kernel
	.type	init_kernel, @function
init_kernel:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lui	a5,%hi(.LC126)
	add	a0,a5,%lo(.LC126)
	call	puts
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	try_init_kernel
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L758
	lui	a5,%hi(__func__.4032)
	add	a3,a5,%lo(__func__.4032)
	li	a2,568
	lui	a5,%hi(.LC116)
	add	a1,a5,%lo(.LC116)
	lui	a5,%hi(.LC127)
	add	a0,a5,%lo(.LC127)
	call	_fail
.L758:
	li	a5,12288
 #APP
# 572 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrs a5, sstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
 #APP
# 574 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrc a5, sstatus, 16
# 0 "" 2
 #NO_APP
	sw	a5,-28(s0)
	lw	a5,-48(s0)
 #APP
# 575 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw sepc, a5
# 0 "" 2
 #NO_APP
	li	a5,1073741824
 #APP
# 577 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw stvec, a5
# 0 "" 2
 #NO_APP
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
 #APP
# 578 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw sscratch, a5
# 0 "" 2
 #NO_APP
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	init_kernel, .-init_kernel
	.text
	.align	2
	.globl	Arch_switchToThread
	.type	Arch_switchToThread, @function
Arch_switchToThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	setVMRoot
	lw	a5,-20(s0)
	lw	a4,180(a5)
	lui	a5,%hi(riscvKSGlobalsFrame)
	sw	a4,%lo(riscvKSGlobalsFrame)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_switchToThread, .-Arch_switchToThread
	.section	.boot.text
	.align	2
	.globl	Arch_configureIdleThread
	.type	Arch_configureIdleThread, @function
Arch_configureIdleThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(idle_thread)
	add	a5,a5,%lo(idle_thread)
	mv	a2,a5
	li	a1,1
	lw	a0,-20(s0)
	call	setRegister
	li	a2,24
	li	a1,32
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_configureIdleThread, .-Arch_configureIdleThread
	.text
	.align	2
	.globl	Arch_switchToIdleThread
	.type	Arch_switchToIdleThread, @function
Arch_switchToIdleThread:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	lui	a5,%hi(riscvKSGlobalsFrame)
	sw	zero,%lo(riscvKSGlobalsFrame)(a5)
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	Arch_switchToIdleThread, .-Arch_switchToIdleThread
	.align	2
	.globl	Arch_activateIdleThread
	.type	Arch_activateIdleThread, @function
Arch_activateIdleThread:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_activateIdleThread, .-Arch_activateIdleThread
	.globl	riscv_kernel_stack
	.section	.boot.data
	.align	12
	.type	riscv_kernel_stack, @object
	.size	riscv_kernel_stack, 4096
riscv_kernel_stack:
	.zero	4096
	.globl	l1pt
	.align	12
	.type	l1pt, @object
	.size	l1pt, 4096
l1pt:
	.zero	4096
	.globl	l2pt
	.align	12
	.type	l2pt, @object
	.size	l2pt, 4096
l2pt:
	.zero	4096
	.section	.rodata
	.align	2
.LC128:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/kernel/vspace.c"
	.align	2
.LC129:
	.string	"Invalid VM rights"
	.text
	.align	2
	.type	APFromVMRights, @function
APFromVMRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,1
	beq	a5,a4,.L765
	li	a4,1
	bltu	a5,a4,.L766
	li	a4,2
	beq	a5,a4,.L767
	li	a4,3
	beq	a5,a4,.L768
	j	.L770
.L766:
	mv	a5,zero
	j	.L769
.L765:
	li	a5,11
	j	.L769
.L767:
	li	a5,4
	j	.L769
.L768:
	li	a5,7
	j	.L769
.L770:
	lui	a5,%hi(__func__.4153)
	add	a3,a5,%lo(__func__.4153)
	li	a2,73
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC129)
	add	a0,a5,%lo(.LC129)
	call	_fail
.L769:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	APFromVMRights, .-APFromVMRights
	.section	.rodata
	.align	2
.LC130:
	.string	"vaddr >= PPTR_TOP"
	.section	.boot.text
	.align	2
	.globl	map_kernel_frame
	.type	map_kernel_frame, @function
map_kernel_frame:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a5,-56(s0)
	srl	a5,a5,12
	and	a5,a5,1023
	sw	a5,-36(s0)
	lw	a4,-56(s0)
	li	a5,1337982976
	bgeu	a4,a5,.L772
	lui	a5,%hi(__FUNCTION__.4160)
	add	a3,a5,%lo(__FUNCTION__.4160)
	li	a2,85
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC130)
	add	a0,a5,%lo(.LC130)
	call	_assert_fail
.L772:
	lw	a5,-52(s0)
	srl	s2,a5,22
	lw	a5,-52(s0)
	srl	a5,a5,12
	and	s3,a5,1023
	lw	a0,-60(s0)
	call	APFromVMRights
	mv	a3,a0
	lui	a5,%hi(l2pt)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(l2pt)
	add	s1,a4,a5
	li	a6,1
	mv	a5,a3
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,s3
	mv	a0,s2
	call	pte_new
	sw	a0,0(s1)
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	add	sp,sp,64
	jr	ra
	.size	map_kernel_frame, .-map_kernel_frame
	.section	.rodata
	.align	2
.LC131:
	.string	"(phys << 22) == PADDR_TOP"
	.section	.boot.text
	.align	2
	.globl	map_kernel_window
	.type	map_kernel_window, @function
map_kernel_window:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	li	a5,4
	sw	a5,-20(s0)
	li	a5,256
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	add	a5,a5,63
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L774
.L775:
	lui	a5,%hi(l1pt)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(l1pt)
	add	s1,a4,a5
	li	a6,1
	li	a5,11
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	lw	a0,-20(s0)
	call	pde_new
	sw	a0,0(s1)
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L774:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bltu	a4,a5,.L775
	lw	a5,-20(s0)
	sll	a4,a5,22
	li	a5,281018368
	beq	a4,a5,.L776
	lui	a5,%hi(__FUNCTION__.4172)
	add	a3,a5,%lo(__FUNCTION__.4172)
	li	a2,126
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC131)
	add	a0,a5,%lo(.LC131)
	call	_assert_fail
.L776:
	lui	a5,%hi(l2pt)
	add	a0,a5,%lo(l2pt)
	call	addrFromPPtr
	mv	a5,a0
	srl	a5,a5,12
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	srl	a0,a5,10
	lw	a5,-36(s0)
	and	a1,a5,1023
	lui	a5,%hi(l1pt)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(l1pt)
	add	s1,a4,a5
	li	a6,1
	mv	a5,zero
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	call	pde_new
	sw	a0,0(s1)
	li	a1,4096
	lui	a5,%hi(l2pt)
	add	a0,a5,%lo(l2pt)
	call	memzero
	lui	a5,%hi(riscvKSGlobalsFrame)
	add	a0,a5,%lo(riscvKSGlobalsFrame)
	call	addrFromPPtr
	mv	a5,a0
	li	a2,2
	li	a1,1337987072
	mv	a0,a5
	call	map_kernel_frame
	lui	a5,%hi(riscv_kernel_stack)
	add	a0,a5,%lo(riscv_kernel_stack)
	call	addrFromPPtr
	mv	a5,a0
	li	a2,1
	li	a1,1342115840
	mv	a0,a5
	call	map_kernel_frame
	lui	a5,%hi(l1pt)
	add	a0,a5,%lo(l1pt)
	call	addrFromPPtr
	mv	a5,a0
	mv	a0,a5
	call	setCurrentPD
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	map_kernel_window, .-map_kernel_window
	.align	2
	.globl	map_it_pt_cap
	.type	map_it_pt_cap, @function
map_it_pt_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_page_table_cap_get_capPTMappedObject
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_page_table_cap_get_capPTMappedIndex
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	lw	a0,-24(s0)
	call	addrFromPPtr
	mv	a5,a0
	srl	a5,a5,12
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	srl	a0,a5,10
	lw	a5,-40(s0)
	and	a1,a5,1023
	li	a6,1
	mv	a5,zero
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	call	pde_new
	mv	a4,a0
	lw	a5,-32(s0)
	sw	a4,0(a5)
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	map_it_pt_cap, .-map_it_pt_cap
	.align	2
	.globl	map_it_frame_cap
	.type	map_it_frame_cap, @function
map_it_frame_cap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFMappedIndex
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a0,-20(s0)
	call	addrFromPPtr
	mv	a5,a0
	srl	s1,a5,22
	lw	a0,-20(s0)
	call	addrFromPPtr
	mv	a5,a0
	srl	a5,a5,12
	and	s2,a5,1023
	li	a0,3
	call	APFromVMRights
	mv	a5,a0
	li	a6,1
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,s2
	mv	a0,s1
	call	pte_new
	mv	a4,a0
	lw	a5,-32(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	add	sp,sp,48
	jr	ra
	.size	map_it_frame_cap, .-map_it_frame_cap
	.align	2
	.globl	map_it_bare_frame_cap
	.type	map_it_bare_frame_cap, @function
map_it_bare_frame_cap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFMappedIndex
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	srl	s1,a5,22
	lw	a5,-20(s0)
	srl	a5,a5,12
	and	s2,a5,1023
	li	a0,3
	call	APFromVMRights
	mv	a5,a0
	li	a6,1
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,s2
	mv	a0,s1
	call	pte_new
	mv	a4,a0
	lw	a5,-32(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	add	sp,sp,48
	jr	ra
	.size	map_it_bare_frame_cap, .-map_it_bare_frame_cap
	.align	2
	.globl	activate_global_pd
	.type	activate_global_pd, @function
activate_global_pd:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	activate_global_pd, .-activate_global_pd
	.align	2
	.globl	write_it_asid_pool
	.type	write_it_asid_pool, @function
write_it_asid_pool:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	write_it_asid_pool, .-write_it_asid_pool
	.text
	.align	2
	.globl	copyGlobalMappings
	.type	copyGlobalMappings, @function
copyGlobalMappings:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(l1pt)
	add	a5,a5,%lo(l1pt)
	sw	a5,-24(s0)
	li	a5,256
	sw	a5,-20(s0)
	j	.L783
.L784:
	lw	a5,-20(s0)
	sll	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sll	a4,a4,2
	lw	a3,-24(s0)
	add	a4,a3,a4
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L783:
	lw	a4,-20(s0)
	li	a5,1023
	bleu	a4,a5,.L784
	nop
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	copyGlobalMappings, .-copyGlobalMappings
	.align	2
	.globl	lookupIPCBuffer
	.type	lookupIPCBuffer, @function
lookupIPCBuffer:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-56(s0)
	lw	a5,180(a5)
	sw	a5,-20(s0)
	lw	a5,-56(s0)
	and	a5,a5,-512
	add	a5,a5,64
	lw	a4,0(a5)
	sw	a4,-40(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-1
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L786
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-1
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L786
	mv	a5,zero
	j	.L792
.L786:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFVMRights
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	add	a5,a5,-3
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L788
	lw	a5,-52(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L789
	lw	a5,-24(s0)
	add	a5,a5,-2
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L789
	li	a5,1
	j	.L790
.L789:
	mv	a5,zero
.L790:
	beqz	a5,.L791
.L788:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	sw	a0,-28(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	mv	a0,a5
	call	pageBitsForSize
	sw	a0,-32(s0)
	li	a4,1
	lw	a5,-32(s0)
	sll	a5,a4,a5
	add	a4,a5,-1
	lw	a5,-20(s0)
	and	a4,a4,a5
	lw	a5,-28(s0)
	add	a5,a4,a5
	j	.L792
.L791:
	mv	a5,zero
.L792:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupIPCBuffer, .-lookupIPCBuffer
	.align	2
	.globl	lookupPTSlot
	.type	lookupPTSlot, @function
lookupPTSlot:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	lw	a5,-76(s0)
	srl	a5,a5,22
	sll	a5,a5,2
	lw	a4,-72(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	bnez	a5,.L794
	li	a0,20
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	li	a5,2
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lw	a4,-48(s0)
	sw	a4,4(a5)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	j	.L793
.L794:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	call	pde_get_ppn1
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	call	pde_get_ppn0
	sw	a0,-28(s0)
	lw	a5,-24(s0)
	sll	a4,a5,10
	lw	a5,-28(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sll	a5,a5,12
	sw	a5,-32(s0)
	lw	a0,-32(s0)
	call	ptrFromPAddr
	sw	a0,-36(s0)
	lw	a5,-76(s0)
	srl	a5,a5,12
	and	a5,a5,1023
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-48(s0)
	lw	a5,-40(s0)
	sw	a5,-44(s0)
	sw	zero,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lw	a4,-48(s0)
	sw	a4,4(a5)
	lw	a4,-44(s0)
	sw	a4,8(a5)
.L793:
	lw	a0,-68(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	lookupPTSlot, .-lookupPTSlot
	.section	.rodata
	.align	2
.LC132:
	.string	"Hit unimplemented lookupPTSlot_nofail "
	.text
	.align	2
	.type	lookupPTSlot_nofail, @function
lookupPTSlot_nofail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC132)
	add	a0,a5,%lo(.LC132)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupPTSlot_nofail, .-lookupPTSlot_nofail
	.section	.rodata
	.align	2
.LC133:
	.string	"Hit unimplemented lookupPDSlot "
	.text
	.align	2
	.globl	lookupPDSlot
	.type	lookupPDSlot, @function
lookupPDSlot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC133)
	add	a0,a5,%lo(.LC133)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupPDSlot, .-lookupPDSlot
	.section	.rodata
	.align	2
.LC134:
	.string	"Hit unimplemented handleVMFault "
	.text
	.align	2
	.globl	handleVMFault
	.type	handleVMFault, @function
handleVMFault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC134)
	add	a0,a5,%lo(.LC134)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleVMFault, .-handleVMFault
	.section	.rodata
	.align	2
.LC135:
	.string	"Hit unimplemented pageTableMapped "
	.text
	.align	2
	.globl	pageTableMapped
	.type	pageTableMapped, @function
pageTableMapped:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lui	a5,%hi(.LC135)
	add	a0,a5,%lo(.LC135)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	pageTableMapped, .-pageTableMapped
	.align	2
	.globl	unmapPageTable
	.type	unmapPageTable, @function
unmapPageTable:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	s1,a4,a5
	mv	a6,zero
	mv	a5,zero
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	pde_new
	mv	a5,a0
	sw	a5,0(s1)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	unmapPageTable, .-unmapPageTable
	.section	.rodata
	.align	2
.LC136:
	.string	"Hit unimplemented pte_pte_invalid_new "
	.text
	.align	2
	.type	pte_pte_invalid_new, @function
pte_pte_invalid_new:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(.LC136)
	add	a0,a5,%lo(.LC136)
	call	puts
	nop
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	pte_pte_invalid_new, .-pte_pte_invalid_new
	.section	.rodata
	.align	2
.LC137:
	.string	"Hit unimplemented unmapPage "
	.text
	.align	2
	.globl	unmapPage
	.type	unmapPage, @function
unmapPage:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lui	a5,%hi(.LC137)
	add	a0,a5,%lo(.LC137)
	call	puts
	lw	a0,-48(s0)
	call	addrFromPPtr
	sw	a0,-20(s0)
	add	a5,s0,-32
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	lookupPTSlot
	lw	a5,-32(s0)
	snez	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L806
	lw	a5,-28(s0)
	sw	zero,0(a5)
	j	.L803
.L806:
	nop
.L803:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	unmapPage, .-unmapPage
	.align	2
	.globl	setVMRoot
	.type	setVMRoot, @function
setVMRoot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,16
	lw	a4,0(a5)
	sw	a4,-28(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,5
	beq	a4,a5,.L808
	lui	a5,%hi(l1pt)
	add	a0,a5,%lo(l1pt)
	call	addrFromPPtr
	mv	a5,a0
	mv	a0,a5
	call	setCurrentPD
	j	.L807
.L808:
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	riscv_vm_contextSwitch
.L807:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	setVMRoot, .-setVMRoot
	.section	.rodata
	.align	2
.LC138:
	.string	"Hit unimplemented setVMRootForFlush "
	.text
	.align	2
	.type	setVMRootForFlush, @function
setVMRootForFlush:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC138)
	add	a0,a5,%lo(.LC138)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setVMRootForFlush, .-setVMRootForFlush
	.align	2
	.globl	isValidVTableRoot
	.type	isValidVTableRoot, @function
isValidVTableRoot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-5
	seqz	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	isValidVTableRoot, .-isValidVTableRoot
	.section	.rodata
	.align	2
.LC139:
	.string	"Requested IPC Buffer is not a frame cap."
	.align	2
.LC140:
	.string	"Requested IPC Buffer location 0x%x is not aligned."
	.text
	.align	2
	.globl	checkValidIPCBuffer
	.type	checkValidIPCBuffer, @function
checkValidIPCBuffer:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-1
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L814
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,454
	lui	a5,%hi(__func__.4283)
	add	a1,a5,%lo(__func__.4283)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC139)
	add	a0,a5,%lo(.LC139)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L815
.L814:
	lw	a5,-20(s0)
	and	a5,a5,511
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L816
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,461
	lui	a5,%hi(__func__.4283)
	add	a1,a5,%lo(__func__.4283)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC140)
	add	a0,a5,%lo(.LC140)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,5
	sw	a4,24(a5)
	li	a5,3
	j	.L815
.L816:
	mv	a5,zero
.L815:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	checkValidIPCBuffer, .-checkValidIPCBuffer
	.align	2
	.globl	maskVMRights
	.type	maskVMRights, @function
maskVMRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	bnez	a5,.L818
	mv	a5,zero
	j	.L819
.L818:
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L820
	lw	a0,-24(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	beqz	a5,.L820
	li	a5,2
	j	.L819
.L820:
	lw	a4,-20(s0)
	li	a5,3
	bne	a4,a5,.L821
	lw	a0,-24(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	beqz	a5,.L821
	lw	a0,-24(s0)
	call	cap_rights_get_capAllowWrite
	mv	a5,a0
	bnez	a5,.L822
	li	a5,2
	j	.L819
.L822:
	li	a5,3
	j	.L819
.L821:
	li	a5,1
.L819:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	maskVMRights, .-maskVMRights
	.section	.rodata
	.align	2
.LC141:
	.string	"Hit unimplemented flushPage "
	.text
	.align	2
	.globl	flushPage
	.type	flushPage, @function
flushPage:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lui	a5,%hi(.LC141)
	add	a0,a5,%lo(.LC141)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	flushPage, .-flushPage
	.section	.rodata
	.align	2
.LC142:
	.string	"Hit unimplemented flushTable "
	.text
	.align	2
	.globl	flushTable
	.type	flushTable, @function
flushTable:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lui	a5,%hi(.LC142)
	add	a0,a5,%lo(.LC142)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	flushTable, .-flushTable
	.section	.rodata
	.align	2
.LC143:
	.string	"Hit unimplemented flushSpace "
	.text
	.align	2
	.globl	flushSpace
	.type	flushSpace, @function
flushSpace:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC143)
	add	a0,a5,%lo(.LC143)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	flushSpace, .-flushSpace
	.align	2
	.globl	invalidateTLBByASID
	.type	invalidateTLBByASID, @function
invalidateTLBByASID:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	invalidateTLBByASID, .-invalidateTLBByASID
	.section	.rodata
	.align	2
.LC144:
	.string	"Invalid PTE frame type"
	.text
	.align	2
	.type	makeUserPTE, @function
makeUserPTE:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	bnez	a5,.L832
	lw	a5,-40(s0)
	srl	s1,a5,22
	lw	a5,-40(s0)
	srl	a5,a5,12
	and	s2,a5,1023
	lw	a0,-44(s0)
	call	APFromVMRights
	mv	a5,a0
	li	a6,1
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	mv	a1,s2
	mv	a0,s1
	call	pte_new
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L833
.L832:
	lui	a5,%hi(__func__.4313)
	add	a3,a5,%lo(__func__.4313)
	li	a2,560
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC144)
	add	a0,a5,%lo(.LC144)
	call	_fail
.L833:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	add	sp,sp,48
	jr	ra
	.size	makeUserPTE, .-makeUserPTE
	.section	.rodata
	.align	2
.LC145:
	.string	"Hit unimplemented makeUserPDE "
	.text
	.align	2
	.type	makeUserPDE, @function
makeUserPDE:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	lui	a5,%hi(.LC145)
	add	a0,a5,%lo(.LC145)
	call	puts
	nop
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	makeUserPDE, .-makeUserPDE
	.align	2
	.type	checkVPAlignment, @function
checkVPAlignment:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a0,-20(s0)
	call	pageBitsForSize
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	add	a4,a5,-1
	lw	a5,-24(s0)
	and	a5,a4,a5
	seqz	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	checkVPAlignment, .-checkVPAlignment
	.align	2
	.type	decodeRISCVPageTableInvocation, @function
decodeRISCVPageTableInvocation:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-84(s0)
	sw	a4,-80(s0)
	mv	s1,a5
	sw	a6,-88(s0)
	lw	a4,-68(s0)
	li	a5,33
	bne	a4,a5,.L838
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a2,-76(s0)
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	performPageTableInvocationUnmap
	mv	a5,a0
	j	.L846
.L838:
	lw	a5,-68(s0)
	add	a5,a5,-32
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L840
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L846
.L840:
	lw	a5,-72(s0)
	sltu	a5,a5,2
	and	a5,a5,0xff
	bnez	a5,.L841
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L842
.L841:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L846
.L842:
	lw	a1,-88(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-88(s0)
	li	a0,1
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	vmAttributesFromWord
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-52(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-5
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L843
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,4(a5)
	li	a5,3
	j	.L846
.L843:
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	li	a5,1073741824
	sltu	a5,a4,a5
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L844
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L846
.L844:
	lw	a5,-20(s0)
	srl	a5,a5,22
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L845
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,8
	sw	a4,24(a5)
	li	a5,3
	j	.L846
.L845:
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	a5,a0
	mv	a0,a5
	call	addrFromPPtr
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	srl	a5,a5,12
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	srl	a0,a5,10
	lw	a5,-40(s0)
	and	a1,a5,1023
	li	a6,1
	mv	a5,zero
	mv	a4,zero
	mv	a3,zero
	mv	a2,zero
	call	pde_new
	mv	a5,a0
	sw	a5,-56(s0)
	lw	a5,-24(s0)
	mv	a2,a5
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	cap_page_table_cap_set_capPTMappedObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-84(s0)
	sw	a5,-80(s0)
	lw	a2,-28(s0)
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	cap_page_table_cap_set_capPTMappedIndex
	mv	a4,a0
	mv	a5,a1
	sw	a4,-84(s0)
	sw	a5,-80(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a4,-32(s0)
	lw	a3,-56(s0)
	lw	a2,-76(s0)
	lw	a0,-84(s0)
	lw	a1,-80(s0)
	call	performPageTableInvocationMap
	mv	a5,a0
.L846:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	decodeRISCVPageTableInvocation, .-decodeRISCVPageTableInvocation
	.section	.rodata
	.align	2
.LC146:
	.string	"Invalid or unexpected ARM page type."
	.text
	.align	2
	.type	createSafeMappingEntries_PTE, @function
createSafeMappingEntries_PTE:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	lw	a5,-64(s0)
	bnez	a5,.L853
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	li	a5,1
	sw	a5,-20(s0)
	lw	a2,-68(s0)
	lw	a1,-56(s0)
	mv	a0,zero
	call	makeUserPTE
	sw	a0,-32(s0)
	add	a5,s0,-48
	lw	a2,-60(s0)
	lw	a1,-76(s0)
	mv	a0,a5
	call	lookupPTSlot
	lw	a5,-48(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L850
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,20(a5)
	li	a5,3
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a4,-20(s0)
	sw	a4,16(a5)
	j	.L847
.L850:
	lw	a5,-44(s0)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	sw	zero,-36(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a4,-20(s0)
	sw	a4,16(a5)
	j	.L847
.L853:
	lui	a5,%hi(__func__.4367)
	add	a3,a5,%lo(__func__.4367)
	li	a2,712
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC146)
	add	a0,a5,%lo(.LC146)
	call	_fail
.L847:
	lw	a0,-52(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	createSafeMappingEntries_PTE, .-createSafeMappingEntries_PTE
	.section	.rodata
	.align	2
.LC147:
	.string	"Hit unimplemented createSafeMappingEntries_PDE "
	.text
	.align	2
	.type	createSafeMappingEntries_PDE, @function
createSafeMappingEntries_PDE:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	lui	a5,%hi(.LC147)
	add	a0,a5,%lo(.LC147)
	call	puts
	nop
	lw	a0,-20(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	createSafeMappingEntries_PDE, .-createSafeMappingEntries_PDE
	.section	.rodata
	.align	2
.LC148:
	.string	"error: Not a valid page size "
	.text
	.align	2
	.type	decodeRISCVFrameInvocation, @function
decodeRISCVFrameInvocation:
	add	sp,sp,-144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	add	s0,sp,144
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	sw	a2,-108(s0)
	sw	a3,-116(s0)
	sw	a4,-112(s0)
	mv	s1,a5
	sw	a6,-120(s0)
	lw	a4,-100(s0)
	li	a5,34
	bne	a4,a5,.L856
	lw	a5,-104(s0)
	sltu	a5,a5,3
	and	a5,a5,0xff
	bnez	a5,.L858
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L859
.L858:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L855
.L859:
	lw	a1,-120(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-120(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-120(s0)
	li	a0,2
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	vmAttributesFromWord
	mv	a5,a0
	sw	a5,-64(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	cap_frame_cap_get_capFSize
	sw	a0,-28(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	cap_frame_cap_get_capFVMRights
	sw	a0,-32(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L861
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L855
.L861:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-5
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L862
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,4(a5)
	li	a5,3
	j	.L855
.L862:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a0,-28(s0)
	call	pageBitsForSize
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	li	a5,1073741824
	sltu	a5,a4,a5
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L863
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L855
.L863:
	lw	a0,-24(s0)
	call	rightsFromWord
	mv	a5,a0
	mv	a1,a5
	lw	a0,-32(s0)
	call	maskVMRights
	sw	a0,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-28(s0)
	call	checkVPAlignment
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L864
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,5
	sw	a4,24(a5)
	li	a5,3
	j	.L855
.L864:
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	mv	a0,a5
	call	addrFromPPtr
	sw	a0,-48(s0)
	sw	zero,-52(s0)
	lw	a5,-28(s0)
	bnez	a5,.L865
	add	a0,s0,-84
	lw	a6,-36(s0)
	lw	a5,-64(s0)
	lw	a4,-44(s0)
	lw	a3,-28(s0)
	lw	a2,-20(s0)
	lw	a1,-48(s0)
	call	createSafeMappingEntries_PTE
	lw	a5,-84(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L866
	lw	a5,-84(s0)
	j	.L855
.L866:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-76(s0)
	sw	a5,-144(s0)
	lw	a5,-72(s0)
	sw	a5,-140(s0)
	lw	a5,-68(s0)
	sw	a5,-136(s0)
	add	a5,s0,-144
	mv	a4,a5
	lw	a3,-80(s0)
	lw	a2,-108(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	performPageInvocationMapPTE
	mv	a5,a0
	j	.L855
.L865:
	lui	a5,%hi(.LC148)
	add	a0,a5,%lo(.LC148)
	call	puts
.L856:
.L855:
	mv	a0,a5
	lw	ra,140(sp)
	lw	s0,136(sp)
	lw	s1,132(sp)
	add	sp,sp,144
	jr	ra
	.size	decodeRISCVFrameInvocation, .-decodeRISCVFrameInvocation
	.local	default_resolve_ret_t
	.comm	default_resolve_ret_t,12,4
	.section	.rodata
	.align	2
.LC149:
	.string	"Hit unimplemented resolveVAddr "
	.text
	.align	2
	.type	resolveVAddr, @function
resolveVAddr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lui	a5,%hi(.LC149)
	add	a0,a5,%lo(.LC149)
	call	puts
	nop
	lw	a0,-20(s0)
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	resolveVAddr, .-resolveVAddr
	.section	.rodata
	.align	2
.LC150:
	.string	"Hit unimplemented decodeRISCVPageDirectoryInvocation "
	.text
	.align	2
	.type	decodeRISCVPageDirectoryInvocation, @function
decodeRISCVPageDirectoryInvocation:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a6,-40(s0)
	lui	a5,%hi(.LC150)
	add	a0,a5,%lo(.LC150)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeRISCVPageDirectoryInvocation, .-decodeRISCVPageDirectoryInvocation
	.section	.rodata
	.align	2
.LC151:
	.string	"Invalid arch cap type"
	.text
	.align	2
	.globl	decodeRISCVMMUInvocation
	.type	decodeRISCVMMUInvocation, @function
decodeRISCVMMUInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	mv	s1,a6
	sw	a7,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,3
	beq	a5,a4,.L874
	li	a4,5
	beq	a5,a4,.L875
	li	a4,1
	beq	a5,a4,.L876
	j	.L878
.L875:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a6,-44(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeRISCVPageDirectoryInvocation
	mv	a5,a0
	j	.L877
.L874:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a6,-44(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeRISCVPageTableInvocation
	mv	a5,a0
	j	.L877
.L876:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a6,-44(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeRISCVFrameInvocation
	mv	a5,a0
	j	.L877
.L878:
	lui	a5,%hi(__func__.4427)
	add	a3,a5,%lo(__func__.4427)
	li	a2,896
	lui	a5,%hi(.LC128)
	add	a1,a5,%lo(.LC128)
	lui	a5,%hi(.LC151)
	add	a0,a5,%lo(.LC151)
	call	_fail
.L877:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeRISCVMMUInvocation, .-decodeRISCVMMUInvocation
	.align	2
	.globl	performPageTableInvocationMap
	.type	performPageTableInvocationMap, @function
performPageTableInvocationMap:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	mv	a5,zero
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	performPageTableInvocationMap, .-performPageTableInvocationMap
	.section	.rodata
	.align	2
.LC152:
	.string	"Hit unimplemented performPageTableInvocationUnmap "
	.text
	.align	2
	.globl	performPageTableInvocationUnmap
	.type	performPageTableInvocationUnmap, @function
performPageTableInvocationUnmap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	lui	a5,%hi(.LC152)
	add	a0,a5,%lo(.LC152)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageTableInvocationUnmap, .-performPageTableInvocationUnmap
	.section	.rodata
	.align	2
.LC153:
	.string	"Hit unimplemented performPageGetAddress "
	.text
	.align	2
	.type	performPageGetAddress, @function
performPageGetAddress:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC153)
	add	a0,a5,%lo(.LC153)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageGetAddress, .-performPageGetAddress
	.section	.rodata
	.align	2
.LC154:
	.string	"Hit unimplemented pteCheckIfMapped "
	.text
	.align	2
	.type	pteCheckIfMapped, @function
pteCheckIfMapped:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC154)
	add	a0,a5,%lo(.LC154)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	pteCheckIfMapped, .-pteCheckIfMapped
	.section	.rodata
	.align	2
.LC155:
	.string	"Hit unimplemented pdeCheckIfMapped "
	.text
	.align	2
	.type	pdeCheckIfMapped, @function
pdeCheckIfMapped:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC155)
	add	a0,a5,%lo(.LC155)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	pdeCheckIfMapped, .-pdeCheckIfMapped
	.align	2
	.globl	performPageInvocationMapPTE
	.type	performPageInvocationMapPTE, @function
performPageInvocationMapPTE:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	mv	s1,a4
	lw	a5,0(s1)
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_set_capFMappedObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,4(s1)
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_set_capFMappedIndex
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-44(s0)
	call	cdtUpdate
	sw	zero,-20(s0)
	j	.L886
.L887:
	lw	a4,0(s1)
	lw	a3,4(s1)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sll	a5,a5,2
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L886:
	lw	a4,8(s1)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L887
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	performPageInvocationMapPTE, .-performPageInvocationMapPTE
	.section	.rodata
	.align	2
.LC156:
	.string	"Hit unimplemented performPageInvocationMapPDE "
	.text
	.align	2
	.globl	performPageInvocationMapPDE
	.type	performPageInvocationMapPDE, @function
performPageInvocationMapPDE:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lui	a5,%hi(.LC156)
	add	a0,a5,%lo(.LC156)
	call	puts
	nop
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationMapPDE, .-performPageInvocationMapPDE
	.section	.rodata
	.align	2
.LC157:
	.string	"Hit unimplemented performPageInvocationRemapPTE "
	.text
	.align	2
	.globl	performPageInvocationRemapPTE
	.type	performPageInvocationRemapPTE, @function
performPageInvocationRemapPTE:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC157)
	add	a0,a5,%lo(.LC157)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationRemapPTE, .-performPageInvocationRemapPTE
	.section	.rodata
	.align	2
.LC158:
	.string	"Hit unimplemented performPageInvocationRemapPDE "
	.text
	.align	2
	.globl	performPageInvocationRemapPDE
	.type	performPageInvocationRemapPDE, @function
performPageInvocationRemapPDE:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(.LC158)
	add	a0,a5,%lo(.LC158)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationRemapPDE, .-performPageInvocationRemapPDE
	.align	2
	.globl	performPageInvocationUnmap
	.type	performPageInvocationUnmap, @function
performPageInvocationUnmap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	mv	a0,a5
	call	addrFromPPtr
	mv	s2,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	mv	a0,a5
	call	addrFromPPtr
	mv	a5,a0
	mv	a3,a5
	mv	a2,s2
	mv	a1,s1
	mv	a0,zero
	call	unmapPage
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationUnmap, .-performPageInvocationUnmap
	.section	.rodata
	.align	2
.LC159:
	.string	"Hit unimplemented performASIDControlInvocation "
	.text
	.align	2
	.globl	performASIDControlInvocation
	.type	performASIDControlInvocation, @function
performASIDControlInvocation:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lui	a5,%hi(.LC159)
	add	a0,a5,%lo(.LC159)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performASIDControlInvocation, .-performASIDControlInvocation
	.section	.rodata
	.align	2
.LC160:
	.string	"Hit unimplemented doFlush "
	.text
	.align	2
	.globl	doFlush
	.type	doFlush, @function
doFlush:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lui	a5,%hi(.LC160)
	add	a0,a5,%lo(.LC160)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	doFlush, .-doFlush
	.section	.rodata
	.align	2
.LC161:
	.string	"Hit unimplemented performPageFlush "
	.text
	.align	2
	.type	performPageFlush, @function
performPageFlush:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	lui	a5,%hi(.LC161)
	add	a0,a5,%lo(.LC161)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	performPageFlush, .-performPageFlush
	.section	.rodata
	.align	2
.LC162:
	.string	"Hit unimplemented performPDFlush "
	.text
	.align	2
	.type	performPDFlush, @function
performPDFlush:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	lui	a5,%hi(.LC162)
	add	a0,a5,%lo(.LC162)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	performPDFlush, .-performPDFlush
	.section	.rodata
	.align	2
.LC163:
	.string	"Hit unimplemented kernelPrefetchAbort "
	.text
	.align	2
	.globl	kernelPrefetchAbort
	.type	kernelPrefetchAbort, @function
kernelPrefetchAbort:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC163)
	add	a0,a5,%lo(.LC163)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	kernelPrefetchAbort, .-kernelPrefetchAbort
	.section	.rodata
	.align	2
.LC164:
	.string	"Hit unimplemented kernelDataAbort "
	.text
	.align	2
	.globl	kernelDataAbort
	.type	kernelDataAbort, @function
kernelDataAbort:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC164)
	add	a0,a5,%lo(.LC164)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	kernelDataAbort, .-kernelDataAbort
	.align	2
	.type	getDecodedChar, @function
getDecodedChar:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getDecodedChar, .-getDecodedChar
	.align	2
	.type	putEncodedChar, @function
putEncodedChar:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	putEncodedChar, .-putEncodedChar
	.align	2
	.type	getArg32, @function
getArg32:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getArg32, .-getArg32
	.align	2
	.type	sendWord, @function
sendWord:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendWord, .-sendWord
	.align	2
	.type	getMDBParent, @function
getMDBParent:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getMDBParent, .-getMDBParent
	.align	2
	.type	sendPD, @function
sendPD:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendPD, .-sendPD
	.align	2
	.type	sendPT, @function
sendPT:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendPT, .-sendPT
	.align	2
	.type	sendASIDPool, @function
sendASIDPool:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendASIDPool, .-sendASIDPool
	.align	2
	.type	sendRunqueues, @function
sendRunqueues:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendRunqueues, .-sendRunqueues
	.align	2
	.type	sendEPQueue, @function
sendEPQueue:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendEPQueue, .-sendEPQueue
	.align	2
	.type	sendCNode, @function
sendCNode:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendCNode, .-sendCNode
	.align	2
	.type	sendIRQNode, @function
sendIRQNode:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendIRQNode, .-sendIRQNode
	.align	2
	.type	sendVersion, @function
sendVersion:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendVersion, .-sendVersion
	.align	2
	.globl	capDL
	.type	capDL, @function
capDL:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	capDL, .-capDL
	.align	2
	.globl	debug_init
	.type	debug_init, @function
debug_init:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	debug_init, .-debug_init
	.align	2
	.globl	software_breakpoint
	.type	software_breakpoint, @function
software_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	software_breakpoint, .-software_breakpoint
	.align	2
	.globl	breakpoint_multiplexer
	.type	breakpoint_multiplexer, @function
breakpoint_multiplexer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	breakpoint_multiplexer, .-breakpoint_multiplexer
	.align	2
	.globl	set_breakpoint
	.type	set_breakpoint, @function
set_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	set_breakpoint, .-set_breakpoint
	.align	2
	.globl	clear_breakpoint
	.type	clear_breakpoint, @function
clear_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	clear_breakpoint, .-clear_breakpoint
	.comm	catch_handler,4,4
	.align	2
	.globl	set_catch_handler
	.type	set_catch_handler, @function
set_catch_handler:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	set_catch_handler, .-set_catch_handler
	.align	2
	.globl	catch_vector
	.type	catch_vector, @function
catch_vector:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	catch_vector, .-catch_vector
	.align	2
	.globl	uncatch_vector
	.type	uncatch_vector, @function
uncatch_vector:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	uncatch_vector, .-uncatch_vector
	.align	2
	.globl	getRestartPC
	.type	getRestartPC, @function
getRestartPC:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	getRegister
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	getRestartPC, .-getRestartPC
	.align	2
	.globl	setNextPC
	.type	setNextPC, @function
setNextPC:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a2,-24(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setNextPC, .-setNextPC
	.globl	msgRegisters
	.section	.rodata
	.align	2
	.type	msgRegisters, @object
	.size	msgRegisters, 16
msgRegisters:
	.word	12
	.word	13
	.word	14
	.word	15
	.globl	frameRegisters
	.align	2
	.type	frameRegisters, @object
	.size	frameRegisters, 40
frameRegisters:
	.word	1
	.word	2
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.globl	gpRegisters
	.align	2
	.type	gpRegisters, @object
	.size	gpRegisters, 28
gpRegisters:
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.globl	exceptionMessage
	.section	.sdata,"aw",@progbits
	.align	2
	.type	exceptionMessage, @object
	.size	exceptionMessage, 4
exceptionMessage:
	.word	2
	.globl	syscallMessage
	.section	.rodata
	.align	2
	.type	syscallMessage, @object
	.size	syscallMessage, 32
syscallMessage:
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	15
	.word	17
	.text
	.align	2
	.globl	riscv_vm_contextSwitch
	.type	riscv_vm_contextSwitch, @function
riscv_vm_contextSwitch:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	addrFromPPtr
	mv	a5,a0
	mv	a0,a5
	call	setCurrentPD
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	riscv_vm_contextSwitch, .-riscv_vm_contextSwitch
	.align	2
	.globl	setHardwareASID
	.type	setHardwareASID, @function
setHardwareASID:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setHardwareASID, .-setHardwareASID
	.align	2
	.globl	Arch_decodeInterruptControl
	.type	Arch_decodeInterruptControl, @function
Arch_decodeInterruptControl:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_decodeInterruptControl, .-Arch_decodeInterruptControl
	.section	.rodata
	.align	2
.LC165:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/object/objecttype.c"
	.text
	.align	2
	.globl	Arch_deriveCap
	.type	Arch_deriveCap, @function
Arch_deriveCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,3
	beq	a5,a4,.L937
	li	a4,5
	beq	a5,a4,.L938
	li	a4,1
	beq	a5,a4,.L939
	j	.L942
.L937:
	mv	a2,zero
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_page_table_cap_set_capPTMappedObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	j	.L935
.L938:
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	j	.L935
.L939:
	mv	a2,zero
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_frame_cap_set_capFMappedObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	j	.L935
.L942:
	lui	a5,%hi(__func__.4626)
	add	a3,a5,%lo(__func__.4626)
	li	a2,43
	lui	a5,%hi(.LC165)
	add	a1,a5,%lo(.LC165)
	lui	a5,%hi(.LC151)
	add	a0,a5,%lo(.LC151)
	call	_fail
.L935:
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_deriveCap, .-Arch_deriveCap
	.align	2
	.globl	Arch_updateCapData
	.type	Arch_updateCapData, @function
Arch_updateCapData:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_updateCapData, .-Arch_updateCapData
	.align	2
	.globl	Arch_maskCapRights
	.type	Arch_maskCapRights, @function
Arch_maskCapRights:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_maskCapRights, .-Arch_maskCapRights
	.align	2
	.globl	Arch_finaliseCap
	.type	Arch_finaliseCap, @function
Arch_finaliseCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_finaliseCap, .-Arch_finaliseCap
	.align	2
	.type	resetMemMapping, @function
resetMemMapping:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	resetMemMapping, .-resetMemMapping
	.align	2
	.globl	Arch_recycleCap
	.type	Arch_recycleCap, @function
Arch_recycleCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_recycleCap, .-Arch_recycleCap
	.align	2
	.globl	Arch_hasRecycleRights
	.type	Arch_hasRecycleRights, @function
Arch_hasRecycleRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L957
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFVMRights
	mv	a5,a0
	add	a5,a5,-3
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L956
.L957:
	li	a5,1
.L956:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_hasRecycleRights, .-Arch_hasRecycleRights
	.align	2
	.globl	Arch_sameRegionAs
	.type	Arch_sameRegionAs, @function
Arch_sameRegionAs:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,3
	beq	a5,a4,.L960
	li	a4,5
	beq	a5,a4,.L961
	li	a4,1
	bne	a5,a4,.L959
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L969
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	sw	a0,-20(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_frame_cap_get_capFBasePtr
	sw	a0,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	mv	a0,a5
	call	pageBitsForSize
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-28(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	mv	a0,a5
	call	pageBitsForSize
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-24(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-32(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L964
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	bltu	a4,a5,.L964
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L964
	li	a5,1
	j	.L965
.L964:
	mv	a5,zero
.L965:
	j	.L966
.L960:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,3
	bne	a4,a5,.L970
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L966
.L961:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,5
	bne	a4,a5,.L971
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L966
.L969:
	nop
	j	.L959
.L970:
	nop
	j	.L959
.L971:
	nop
.L959:
	mv	a5,zero
.L966:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_sameRegionAs, .-Arch_sameRegionAs
	.align	2
	.globl	Arch_sameObjectAs
	.type	Arch_sameObjectAs, @function
Arch_sameObjectAs:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L973
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L973
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	bne	s1,a5,.L974
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFSize
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	bne	s1,a5,.L974
	li	a5,1
	j	.L975
.L974:
	mv	a5,zero
.L975:
	j	.L976
.L973:
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	Arch_sameRegionAs
	mv	a5,a0
.L976:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_sameObjectAs, .-Arch_sameObjectAs
	.section	.rodata
	.align	2
.LC166:
	.string	"Invalid object type"
	.text
	.align	2
	.globl	Arch_getObjectSize
	.type	Arch_getObjectSize, @function
Arch_getObjectSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	add	a4,a5,-5
	li	a5,2
	bgtu	a4,a5,.L978
	li	a5,12
	j	.L981
.L978:
	lui	a5,%hi(__func__.4675)
	add	a3,a5,%lo(__func__.4675)
	li	a2,146
	lui	a5,%hi(.LC165)
	add	a1,a5,%lo(.LC165)
	lui	a5,%hi(.LC166)
	add	a0,a5,%lo(.LC166)
	call	_fail
.L981:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_getObjectSize, .-Arch_getObjectSize
	.section	.rodata
	.align	2
.LC167:
	.string	"Arch_createObject got an API type or invalid object type"
	.text
	.align	2
	.globl	Arch_createObject
	.type	Arch_createObject, @function
Arch_createObject:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a5,-36(s0)
	li	a4,6
	beq	a5,a4,.L984
	li	a4,7
	beq	a5,a4,.L985
	li	a4,5
	bne	a5,a4,.L989
	lw	a5,-48(s0)
	bnez	a5,.L987
	li	a1,4096
	lw	a0,-40(s0)
	call	memzero
.L987:
	lw	a5,-40(s0)
	mv	a4,zero
	li	a3,3
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	cap_frame_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L988
.L984:
	li	a1,4096
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	mv	a2,a5
	mv	a1,zero
	mv	a0,zero
	call	cap_page_table_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L988
.L985:
	li	a1,4096
	lw	a0,-40(s0)
	call	memzero
	lw	a0,-40(s0)
	call	copyGlobalMappings
	lw	a5,-40(s0)
	mv	a0,a5
	call	cap_page_directory_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L988
.L989:
	lui	a5,%hi(__func__.4686)
	add	a3,a5,%lo(__func__.4686)
	li	a2,190
	lui	a5,%hi(.LC165)
	add	a1,a5,%lo(.LC165)
	lui	a5,%hi(.LC167)
	add	a0,a5,%lo(.LC167)
	call	_fail
.L988:
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_createObject, .-Arch_createObject
	.section	.rodata
	.align	2
.LC168:
	.string	"Not page_cap"
	.text
	.align	2
	.globl	Arch_decodeInvocation
	.type	Arch_decodeInvocation, @function
Arch_decodeInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	mv	s1,a6
	sw	a7,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,3
	beq	a5,a4,.L992
	li	a4,5
	beq	a5,a4,.L992
	li	a4,1
	bne	a5,a4,.L994
.L992:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,-44(s0)
	mv	a6,a5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeRISCVMMUInvocation
	mv	a5,a0
	j	.L990
.L994:
	lui	a5,%hi(.LC168)
	add	a0,a5,%lo(.LC168)
	call	printf
.L990:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	Arch_decodeInvocation, .-Arch_decodeInvocation
	.align	2
	.globl	Arch_prepareThreadDelete
	.type	Arch_prepareThreadDelete, @function
Arch_prepareThreadDelete:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_prepareThreadDelete, .-Arch_prepareThreadDelete
	.align	2
	.globl	Arch_isFrameType
	.type	Arch_isFrameType, @function
Arch_isFrameType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,5
	bne	a4,a5,.L1000
	li	a5,1
	j	.L999
.L1000:
	mv	a5,zero
.L999:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_isFrameType, .-Arch_isFrameType
	.align	2
	.type	setMR, @function
setMR:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-28(s0)
	li	a5,3
	bleu	a4,a5,.L1002
	lw	a5,-24(s0)
	beqz	a5,.L1003
	lw	a5,-28(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a5,1
	j	.L1004
.L1003:
	li	a5,4
	j	.L1004
.L1002:
	lui	a5,%hi(msgRegisters)
	lw	a4,-28(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a2,-32(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	setRegister
	lw	a5,-28(s0)
	add	a5,a5,1
.L1004:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setMR, .-setMR
	.section	.rodata
	.align	2
.LC169:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/riscv/object/tcb.c"
	.align	2
.LC170:
	.string	"Invalid lookup failure"
	.text
	.align	2
	.type	setMRs_lookup_failure, @function
setMRs_lookup_failure:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	sw	a4,-52(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_get_lufType
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	mv	a3,a5
	lw	a2,-52(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	li	a4,1
	beq	a5,a4,.L1007
	li	a4,1
	bltu	a5,a4,.L1008
	li	a4,2
	beq	a5,a4,.L1009
	li	a4,3
	beq	a5,a4,.L1010
	j	.L1012
.L1008:
	lw	a5,-24(s0)
	j	.L1011
.L1007:
	lw	a5,-52(s0)
	add	s1,a5,1
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_missing_capability_get_bitsLeft
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	mv	a5,a0
	j	.L1011
.L1009:
	lw	a5,-52(s0)
	add	s1,a5,1
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_depth_mismatch_get_bitsLeft
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	lw	a5,-52(s0)
	add	s1,a5,2
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_depth_mismatch_get_bitsFound
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	mv	a5,a0
	j	.L1011
.L1010:
	lw	a5,-52(s0)
	add	s1,a5,1
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_guard_mismatch_get_bitsLeft
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	lw	a5,-52(s0)
	add	s1,a5,2
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_guard_mismatch_get_guardFound
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	lw	a5,-52(s0)
	add	s1,a5,3
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookup_fault_guard_mismatch_get_bitsFound
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	setMR
	mv	a5,a0
	j	.L1011
.L1012:
	lui	a5,%hi(__func__.4727)
	add	a3,a5,%lo(__func__.4727)
	li	a2,67
	lui	a5,%hi(.LC169)
	add	a1,a5,%lo(.LC169)
	lui	a5,%hi(.LC170)
	add	a0,a5,%lo(.LC170)
	call	_fail
.L1011:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	setMRs_lookup_failure, .-setMRs_lookup_failure
	.section	.rodata
	.align	2
.LC171:
	.string	"Invalid fault"
	.text
	.align	2
	.globl	setMRs_fault
	.type	setMRs_fault, @function
setMRs_fault:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_get_faultType
	mv	a5,a0
	li	a4,2
	beq	a5,a4,.L1015
	li	a4,2
	bgtu	a5,a4,.L1016
	li	a4,1
	beq	a5,a4,.L1017
	j	.L1014
.L1016:
	li	a4,3
	beq	a5,a4,.L1028
	li	a4,4
	beq	a5,a4,.L1029
	j	.L1014
.L1017:
	lw	a0,-36(s0)
	call	getRestartPC
	mv	a5,a0
	mv	a3,a5
	mv	a2,zero
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_cap_fault_get_address
	mv	a5,a0
	mv	a3,a5
	li	a2,1
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_cap_fault_get_inReceivePhase
	mv	a5,a0
	mv	a3,a5
	li	a2,2
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	li	a4,3
	lw	a2,156(a5)
	lw	a3,160(a5)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMRs_lookup_failure
	mv	a5,a0
	j	.L1020
.L1015:
	lw	a0,-36(s0)
	call	getRestartPC
	mv	a5,a0
	mv	a3,a5
	mv	a2,zero
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_vm_fault_get_address
	mv	a5,a0
	mv	a3,a5
	li	a2,1
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_vm_fault_get_instructionFault
	mv	a5,a0
	mv	a3,a5
	li	a2,2
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_vm_fault_get_FSR
	mv	a5,a0
	mv	a3,a5
	li	a2,3
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	mv	a5,a0
	j	.L1020
.L1028:
	sw	zero,-20(s0)
	j	.L1021
.L1022:
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(syscallMessage)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(syscallMessage)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-40(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1021:
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L1022
	lw	a5,-44(s0)
	beqz	a5,.L1023
	j	.L1024
.L1025:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-44(s0)
	add	s1,a4,a5
	lui	a5,%hi(syscallMessage)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(syscallMessage)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	getRegister
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1024:
	lw	a4,-20(s0)
	li	a5,11
	bleu	a4,a5,.L1025
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-44(s0)
	add	s1,a4,a5
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_unknown_syscall_get_syscallNumber
	mv	a5,a0
	sw	a5,0(s1)
	li	a5,13
	j	.L1020
.L1023:
	li	a5,4
	j	.L1020
.L1029:
	sw	zero,-24(s0)
	j	.L1026
.L1027:
	lui	a5,%hi(msgRegisters)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	li	a5,2
	mv	a1,a5
	lw	a0,-36(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-40(s0)
	call	setRegister
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L1026:
	lw	a4,-24(s0)
	li	a5,2
	bleu	a4,a5,.L1027
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_user_exception_get_number
	mv	a5,a0
	mv	a3,a5
	li	a2,3
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_user_exception_get_code
	mv	a5,a0
	mv	a3,a5
	li	a2,4
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMR
	mv	a5,a0
	j	.L1020
.L1014:
	lui	a5,%hi(__func__.4750)
	add	a3,a5,%lo(__func__.4750)
	li	a2,131
	lui	a5,%hi(.LC169)
	add	a1,a5,%lo(.LC169)
	lui	a5,%hi(.LC171)
	add	a0,a5,%lo(.LC171)
	call	_fail
.L1020:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	setMRs_fault, .-setMRs_fault
	.section	.rodata
	.align	2
.LC172:
	.string	"Invalid syscall error"
	.text
	.align	2
	.globl	setMRs_syscall_error
	.type	setMRs_syscall_error, @function
setMRs_syscall_error:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,24(a5)
	li	a4,10
	bgtu	a5,a4,.L1031
	sll	a4,a5,2
	lui	a5,%hi(.L1033)
	add	a5,a5,%lo(.L1033)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1033:
	.word	.L1031
	.word	.L1032
	.word	.L1034
	.word	.L1035
	.word	.L1036
	.word	.L1037
	.word	.L1038
	.word	.L1039
	.word	.L1039
	.word	.L1039
	.word	.L1040
	.text
.L1032:
	lui	a5,%hi(current_syscall_error)
	lw	a5,%lo(current_syscall_error)(a5)
	mv	a3,a5
	mv	a2,zero
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	mv	a5,a0
	j	.L1041
.L1034:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,4(a5)
	mv	a3,a5
	mv	a2,zero
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	mv	a5,a0
	j	.L1041
.L1035:
	mv	a5,zero
	j	.L1041
.L1036:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,8(a5)
	mv	a3,a5
	mv	a2,zero
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,12(a5)
	mv	a3,a5
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	mv	a5,a0
	j	.L1041
.L1037:
	mv	a5,zero
	j	.L1041
.L1038:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,20(a5)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a3,a5
	mv	a2,zero
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	lui	a5,%hi(current_lookup_fault)
	li	a4,1
	lw	a2,%lo(current_lookup_fault)(a5)
	add	a5,a5,%lo(current_lookup_fault)
	lw	a3,4(a5)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMRs_lookup_failure
	mv	a5,a0
	j	.L1041
.L1039:
	mv	a5,zero
	j	.L1041
.L1040:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,16(a5)
	mv	a3,a5
	mv	a2,zero
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setMR
	mv	a5,a0
	j	.L1041
.L1031:
	lui	a5,%hi(__func__.4766)
	add	a3,a5,%lo(__func__.4766)
	li	a2,173
	lui	a5,%hi(.LC169)
	add	a1,a5,%lo(.LC169)
	lui	a5,%hi(.LC172)
	add	a0,a5,%lo(.LC172)
	call	_fail
.L1041:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setMRs_syscall_error, .-setMRs_syscall_error
	.align	2
	.globl	Arch_decodeTransfer
	.type	Arch_decodeTransfer, @function
Arch_decodeTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_decodeTransfer, .-Arch_decodeTransfer
	.align	2
	.globl	Arch_performTransfer
	.type	Arch_performTransfer, @function
Arch_performTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_performTransfer, .-Arch_performTransfer
	.align	2
	.globl	Arch_leaveVMAsyncTransfer
	.type	Arch_leaveVMAsyncTransfer, @function
Arch_leaveVMAsyncTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_leaveVMAsyncTransfer, .-Arch_leaveVMAsyncTransfer
	.section	.rodata
	.align	2
.LC173:
	.string	"seL4 called fail at %s:%u in function %s, saying \"%s\"\n"
	.text
	.align	2
	.globl	_fail
	.type	_fail, @function
_fail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-20(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lui	a5,%hi(.LC173)
	add	a0,a5,%lo(.LC173)
	call	printf
	call	halt
	.size	_fail, .-_fail
	.section	.rodata
	.align	2
.LC174:
	.string	"seL4 failed assertion '%s' at %s:%u in function %s\n"
	.text
	.align	2
	.globl	_assert_fail
	.type	_assert_fail, @function
_assert_fail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC174)
	add	a0,a5,%lo(.LC174)
	call	printf
	call	halt
	.size	_assert_fail, .-_assert_fail
	.comm	current_lookup_fault,8,4
	.comm	current_fault,8,4
	.comm	current_syscall_error,28,4
	.globl	ndks_boot
	.section	.boot.data
	.align	2
	.type	ndks_boot, @object
	.size	ndks_boot, 28
ndks_boot:
	.zero	28
	.section	.rodata
	.align	2
.LC175:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/kernel/boot.c"
	.align	2
.LC176:
	.string	"reg.start <= reg.end"
	.section	.boot.text
	.align	2
	.globl	insert_region
	.type	insert_region, @function
insert_region:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L1050
	lui	a5,%hi(__FUNCTION__.4844)
	add	a3,a5,%lo(__FUNCTION__.4844)
	li	a2,33
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC176)
	add	a0,a5,%lo(.LC176)
	call	_assert_fail
.L1050:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L1051
	li	a5,1
	j	.L1052
.L1051:
	sw	zero,-20(s0)
	j	.L1053
.L1055:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L1054
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	li	a5,1
	j	.L1052
.L1054:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1053:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L1055
	mv	a5,zero
.L1052:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	insert_region, .-insert_region
	.align	2
	.type	reg_size, @function
reg_size:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	reg_size, .-reg_size
	.section	.rodata
	.align	2
.LC177:
	.string	"Kernel init failing: not enough memory"
	.align	2
.LC178:
	.string	"alloc_region(): wasted 0x%x bytes due to alignment, try to increase MAX_NUM_FREEMEM_REG\n"
	.section	.boot.text
	.align	2
	.globl	alloc_region
	.type	alloc_region, @function
alloc_region:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-84(s0)
	sw	zero,-24(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-20(s0)
	j	.L1059
.L1066:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	add	a4,a5,-1
	lw	a5,-84(s0)
	srl	a5,a4,a5
	add	a4,a5,1
	lw	a5,-84(s0)
	sll	a4,a4,a5
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a3,4(a5)
	lui	a2,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a2,a2,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a2,a5
	lw	a2,4(a5)
	lw	a5,-84(s0)
	srl	a2,a2,a5
	lw	a5,-84(s0)
	sll	a5,a2,a5
	sub	a5,a3,a5
	bgeu	a4,a5,.L1060
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	add	a4,a5,-1
	lw	a5,-84(s0)
	srl	a5,a4,a5
	add	a4,a5,1
	lw	a5,-84(s0)
	sll	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	li	a3,1
	lw	a5,-84(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,-52(s0)
	j	.L1061
.L1060:
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	lw	a5,-84(s0)
	srl	a4,a4,a5
	lw	a5,-84(s0)
	sll	a5,a4,a5
	sw	a5,-52(s0)
	lw	a4,-52(s0)
	li	a3,1
	lw	a5,-84(s0)
	sll	a5,a3,a5
	sub	a5,a4,a5
	sw	a5,-56(s0)
.L1061:
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	bleu	a4,a5,.L1062
	lw	a4,-56(s0)
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	bltu	a4,a5,.L1062
	lw	a4,-52(s0)
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a5,4(a5)
	bgtu	a4,a5,.L1062
	lw	a4,-56(s0)
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a3,4(a5)
	lw	a5,-52(s0)
	sub	a5,a3,a5
	bgeu	a4,a5,.L1063
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-64(s0)
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-52(s0)
	sw	a5,-72(s0)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-68(s0)
	j	.L1064
.L1063:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-72(s0)
	lw	a5,-56(s0)
	sw	a5,-68(s0)
	lw	a5,-52(s0)
	sw	a5,-64(s0)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-60(s0)
.L1064:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	is_reg_empty
	mv	a5,a0
	bnez	a5,.L1065
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	reg_size
	mv	a5,a0
	bltu	s1,a5,.L1065
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	reg_size
	mv	a5,a0
	bne	s1,a5,.L1062
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	reg_size
	mv	a5,a0
	bgeu	s1,a5,.L1062
.L1065:
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	lw	a5,-64(s0)
	sw	a5,-40(s0)
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	lw	a5,-68(s0)
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L1062:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1059:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L1066
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L1067
	lui	a5,%hi(.LC177)
	add	a0,a5,%lo(.LC177)
	call	puts
	mv	a5,zero
	j	.L1070
.L1067:
	lui	a5,%hi(ndks_boot)
	lw	a4,-24(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	sw	zero,0(a5)
	lui	a4,%hi(ndks_boot)
	lw	a5,-24(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	insert_region
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	insert_region
	mv	a5,a0
	bnez	a5,.L1069
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	mv	a1,a5
	lui	a5,%hi(.LC178)
	add	a0,a5,%lo(.LC178)
	call	printf
.L1069:
	lw	a5,-32(s0)
.L1070:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	alloc_region, .-alloc_region
	.align	2
	.globl	write_slot
	.type	write_slot, @function
write_slot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a1,-20(s0)
	mv	a0,zero
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	write_slot, .-write_slot
	.section	.rodata
	.align	2
.LC179:
	.string	"Kernel init failing: could not create root cnode"
	.section	.boot.text
	.align	2
	.globl	create_root_cnode
	.type	create_root_cnode, @function
create_root_cnode:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	li	a4,65536
	sw	a4,24(a5)
	li	a0,20
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1073
	lui	a5,%hi(.LC179)
	add	a0,a5,%lo(.LC179)
	call	puts
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1075
.L1073:
	lw	a5,-20(s0)
	li	a1,1048576
	mv	a0,a5
	call	memzero
	lw	a3,-20(s0)
	mv	a2,zero
	li	a1,16
	li	a0,16
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	add	a5,a5,32
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	write_slot
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L1075:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	create_root_cnode, .-create_root_cnode
	.section	.rodata
	.align	2
.LC180:
	.string	"Kernel init failing: could not create irq cnode"
	.section	.boot.text
	.align	2
	.globl	create_irq_cnode
	.type	create_irq_cnode, @function
create_irq_cnode:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1077
	lui	a5,%hi(.LC180)
	add	a0,a5,%lo(.LC180)
	call	puts
	mv	a5,zero
	j	.L1078
.L1077:
	lw	a5,-20(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	lw	a4,-20(s0)
	lui	a5,%hi(intStateIRQNode)
	sw	a4,%lo(intStateIRQNode)(a5)
	li	a5,1
.L1078:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	create_irq_cnode, .-create_irq_cnode
	.section	.rodata
	.align	2
.LC181:
	.string	"ksDomScheduleLength > 0"
	.align	2
.LC182:
	.string	"ksDomSchedule[i].domain < CONFIG_NUM_DOMAINS"
	.align	2
.LC183:
	.string	"ksDomSchedule[i].length > 0"
	.section	.boot.text
	.align	2
	.globl	create_domain_cap
	.type	create_domain_cap, @function
create_domain_cap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	li	a5,1
	bnez	a5,.L1080
	lui	a5,%hi(__FUNCTION__.4891)
	add	a3,a5,%lo(__FUNCTION__.4891)
	li	a2,197
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC181)
	add	a0,a5,%lo(.LC181)
	call	_assert_fail
.L1080:
	sw	zero,-20(s0)
	j	.L1081
.L1084:
	lui	a5,%hi(ksDomSchedule)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a5,0(a5)
	beqz	a5,.L1082
	lui	a5,%hi(__FUNCTION__.4891)
	add	a3,a5,%lo(__FUNCTION__.4891)
	li	a2,199
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC182)
	add	a0,a5,%lo(.LC182)
	call	_assert_fail
.L1082:
	li	a5,1
	bnez	a5,.L1083
	lui	a5,%hi(__FUNCTION__.4891)
	add	a3,a5,%lo(__FUNCTION__.4891)
	li	a2,200
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC183)
	add	a0,a5,%lo(.LC183)
	call	_assert_fail
.L1083:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1081:
	li	a5,1
	lw	a4,-20(s0)
	bltu	a4,a5,.L1084
	call	cap_domain_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,176
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	mv	a0,a5
	call	write_slot
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	create_domain_cap, .-create_domain_cap
	.section	.rodata
	.align	2
.LC184:
	.string	"Kernel init failing: could not create ipc buffer frame"
	.section	.boot.text
	.align	2
	.globl	create_ipcbuf_frame
	.type	create_ipcbuf_frame, @function
create_ipcbuf_frame:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-68(s0)
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1086
	lui	a5,%hi(.LC184)
	add	a0,a5,%lo(.LC184)
	call	puts
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1088
.L1086:
	lw	a5,-20(s0)
	li	a1,12
	mv	a0,a5
	call	clearMemory
	mv	a5,zero
	mv	a4,zero
	lw	a3,-68(s0)
	lw	a2,-20(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,144
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	write_slot
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L1088:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	create_ipcbuf_frame, .-create_ipcbuf_frame
	.align	2
	.globl	create_bi_frame_cap
	.type	create_bi_frame_cap, @function
create_bi_frame_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	mv	a5,zero
	mv	a4,zero
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,112
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	mv	a0,a5
	call	write_slot
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_bi_frame_cap, .-create_bi_frame_cap
	.section	.rodata
	.align	2
.LC185:
	.string	"Kernel init failed: could not allocate bootinfo frame"
	.section	.boot.text
	.align	2
	.globl	allocate_bi_frame
	.type	allocate_bi_frame, @function
allocate_bi_frame:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1091
	lui	a5,%hi(.LC185)
	add	a0,a5,%lo(.LC185)
	call	puts
	mv	a5,zero
	j	.L1092
.L1091:
	lw	a5,-20(s0)
	li	a1,12
	mv	a0,a5
	call	clearMemory
	lw	a4,-20(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	sw	a4,16(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	li	a4,12
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	sw	zero,8(a5)
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a4,16
	sb	a4,-24(a5)
	lw	a3,-20(s0)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-20(a5)
	lw	a5,-20(s0)
.L1092:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	allocate_bi_frame, .-allocate_bi_frame
	.section	.rodata
	.align	2
.LC186:
	.string	"Kernel init failed: ran out of cap slots"
	.section	.boot.text
	.align	2
	.globl	provide_cap
	.type	provide_cap, @function
provide_cap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a4,20(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,24(a5)
	bltu	a4,a5,.L1094
	lui	a5,%hi(.LC186)
	add	a0,a5,%lo(.LC186)
	call	puts
	mv	a5,zero
	j	.L1095
.L1094:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capPtr
	mv	a4,a0
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	write_slot
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	add	a4,a5,1
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	sw	a4,20(a5)
	li	a5,1
.L1095:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	provide_cap, .-provide_cap
	.align	2
	.globl	create_frames_of_region
	.type	create_frames_of_region, @function
create_frames_of_region:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-68(s0)
	sw	a4,-64(s0)
	sw	a5,-76(s0)
	sw	a6,-72(s0)
	sw	a7,-80(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	lw	a5,-76(s0)
	sw	a5,-20(s0)
	j	.L1097
.L1102:
	lw	a5,-80(s0)
	beqz	a5,.L1098
	lw	a5,0(s0)
	lw	a4,-20(s0)
	sub	a4,a4,a5
	li	a5,-1056964608
	add	a3,a4,a5
	mv	a5,zero
	mv	a4,zero
	lw	a2,-20(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L1099
.L1098:
	mv	a1,zero
	lw	a0,-20(s0)
	call	create_unmapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L1099:
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	provide_cap
	mv	a5,a0
	bnez	a5,.L1100
	lw	a5,-52(s0)
	sw	zero,0(a5)
	lw	a5,-52(s0)
	sw	zero,4(a5)
	lw	a5,-52(s0)
	sw	zero,8(a5)
	j	.L1096
.L1100:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-20(s0)
.L1097:
	lw	a4,-72(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1102
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	li	a4,1
	sw	a4,8(a5)
.L1096:
	lw	a0,-52(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	create_frames_of_region, .-create_frames_of_region
	.section	.rodata
	.align	2
.LC187:
	.string	"Kernel init failed: Unable to allocate tcb for idle thread"
	.section	.boot.text
	.align	2
	.globl	create_idle_thread
	.type	create_idle_thread, @function
create_idle_thread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	li	a0,9
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1105
	lui	a5,%hi(.LC187)
	add	a0,a5,%lo(.LC187)
	call	puts
	mv	a5,zero
	j	.L1106
.L1105:
	lw	a5,-20(s0)
	li	a1,512
	mv	a0,a5
	call	memzero
	lw	a5,-20(s0)
	add	a5,a5,256
	mv	a4,a5
	lui	a5,%hi(ksIdleThread)
	sw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksIdleThread)
	lw	a5,%lo(ksIdleThread)(a5)
	mv	a0,a5
	call	configureIdleThread
	li	a5,1
.L1106:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	create_idle_thread, .-create_idle_thread
	.section	.rodata
	.align	2
.LC188:
	.string	"Kernel init failed: Unable to allocate tcb for initial thread"
	.align	2
.LC189:
	.string	"Failed to derive copy of IPC Buffer"
	.align	2
.LC190:
	.string	"ksCurDomain < CONFIG_NUM_DOMAINS && ksDomainTime > 0"
	.section	.boot.text
	.align	2
	.globl	create_initial_thread
	.type	create_initial_thread, @function
create_initial_thread:
	add	sp,sp,-96
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,12(s0)
	li	a0,9
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1108
	lui	a5,%hi(.LC188)
	add	a0,a5,%lo(.LC188)
	call	puts
	mv	a5,zero
	j	.L1113
.L1108:
	lw	a5,-20(s0)
	li	a1,512
	mv	a0,a5
	call	memzero
	lw	a5,-20(s0)
	add	a5,a5,256
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,172(a5)
	lw	a5,-24(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,144
	add	a5,s0,-44
	lw	a2,12(s0)
	lw	a3,16(s0)
	mv	a1,a4
	mv	a0,a5
	call	deriveCap
	lw	a5,-44(s0)
	beqz	a5,.L1110
	lui	a5,%hi(.LC189)
	add	a0,a5,%lo(.LC189)
	call	puts
	mv	a5,zero
	j	.L1113
.L1110:
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,32
	lw	a4,-20(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cteInsert
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,48
	lw	a5,-20(s0)
	add	a5,a5,16
	mv	a3,a5
	mv	a2,a4
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cteInsert
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,144
	lw	a5,-20(s0)
	add	a5,a5,64
	mv	a3,a5
	mv	a2,a4
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cteInsert
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	sw	a4,180(a5)
	lw	a2,-72(s0)
	li	a1,10
	lw	a0,-24(s0)
	call	setRegister
	lw	a1,-68(s0)
	lw	a0,-24(s0)
	call	setNextPC
	lw	a5,-24(s0)
	li	a4,255
	sw	a4,168(a5)
	lw	a0,-24(s0)
	call	setupReplyMaster
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
	lui	a5,%hi(ksIdleThread)
	lw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksCurThread)
	sw	a4,%lo(ksCurThread)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(ksCurDomain)
	sw	a4,%lo(ksCurDomain)(a5)
	li	a4,1
	lui	a5,%hi(ksDomainTime)
	sw	a4,%lo(ksDomainTime)(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a5,%lo(ksCurDomain)(a5)
	bnez	a5,.L1111
	lui	a5,%hi(ksDomainTime)
	lw	a5,%lo(ksDomainTime)(a5)
	bnez	a5,.L1112
.L1111:
	lui	a5,%hi(__FUNCTION__.4953)
	add	a3,a5,%lo(__FUNCTION__.4953)
	li	a2,398
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC190)
	add	a0,a5,%lo(.LC190)
	call	_assert_fail
.L1112:
	lw	a0,-24(s0)
	call	switchToThread
	lw	a5,-24(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,16
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	write_slot
	li	a5,1
.L1113:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,96
	jr	ra
	.size	create_initial_thread, .-create_initial_thread
	.section	.rodata
	.align	2
.LC191:
	.string	"Kernel init: Too many untyped regions for boot info"
	.section	.boot.text
	.align	2
	.type	provide_untyped_cap, @function
provide_untyped_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a4,20(a5)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,799
	bgtu	a4,a5,.L1115
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	s1,16(a5)
	lw	a5,-48(s0)
	mv	a0,a5
	call	pptr_to_paddr
	mv	a4,a0
	lw	a5,-24(s0)
	add	a5,a5,16
	sll	a5,a5,2
	add	a5,s1,a5
	sw	a4,8(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a3,16(a5)
	lw	a5,-52(s0)
	and	a4,a5,0xff
	lw	a5,-24(s0)
	add	a5,a3,a5
	li	a3,4096
	add	a5,a3,a5
	sb	a4,-824(a5)
	lw	a2,-48(s0)
	lw	a1,-52(s0)
	lw	a0,-44(s0)
	call	cap_untyped_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	provide_cap
	sw	a0,-20(s0)
	j	.L1116
.L1115:
	lui	a5,%hi(.LC191)
	add	a0,a5,%lo(.LC191)
	call	puts
	li	a5,1
	sw	a5,-20(s0)
.L1116:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	provide_untyped_cap, .-provide_untyped_cap
	.globl	__clzsi2
	.align	2
	.type	boot_clz, @function
boot_clz:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	__clzsi2
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	boot_clz, .-boot_clz
	.globl	__ctzsi2
	.align	2
	.type	boot_ctz, @function
boot_ctz:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	__ctzsi2
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	boot_ctz, .-boot_ctz
	.section	.rodata
	.align	2
.LC192:
	.string	"size_bits >= WORD_BITS / 8"
	.section	.boot.text
	.align	2
	.globl	create_untypeds_for_region
	.type	create_untypeds_for_region, @function
create_untypeds_for_region:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-56(s0)
	j	.L1123
.L1129:
	lw	a5,-44(s0)
	bnez	a5,.L1124
	lw	a4,-52(s0)
	li	a5,1073741824
	bne	a4,a5,.L1124
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-52(s0)
.L1124:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	mv	a0,a5
	call	boot_clz
	mv	a4,a0
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	mv	a0,a5
	call	boot_ctz
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L1125
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L1125:
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L1126
	lui	a5,%hi(__FUNCTION__.4977)
	add	a3,a5,%lo(__FUNCTION__.4977)
	li	a2,482
	lui	a5,%hi(.LC175)
	add	a1,a5,%lo(.LC175)
	lui	a5,%hi(.LC192)
	add	a0,a5,%lo(.LC192)
	call	_assert_fail
.L1126:
	lw	a3,-52(s0)
	lw	a5,-56(s0)
	lw	a4,-20(s0)
	lw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	provide_untyped_cap
	mv	a5,a0
	bnez	a5,.L1127
	mv	a5,zero
	j	.L1128
.L1127:
	lw	a4,-52(s0)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,-52(s0)
.L1123:
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L1129
	li	a5,1
.L1128:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_untypeds_for_region, .-create_untypeds_for_region
	.align	2
	.globl	create_untypeds
	.type	create_untypeds, @function
create_untypeds:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a3,-64(s0)
	lw	a4,-60(s0)
	mv	a2,zero
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	create_untypeds_for_region
	mv	a5,a0
	bnez	a5,.L1131
	mv	a5,zero
	j	.L1136
.L1131:
	sw	zero,-20(s0)
	j	.L1133
.L1135:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	sw	zero,0(a5)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	lw	a5,-24(s0)
	lw	a3,-36(s0)
	lw	a4,-32(s0)
	mv	a2,zero
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	create_untypeds_for_region
	mv	a5,a0
	bnez	a5,.L1134
	mv	a5,zero
	j	.L1136
.L1134:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1133:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L1135
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-24(s0)
	sw	a4,56(a5)
	lw	a4,-28(s0)
	sw	a4,60(a5)
	li	a5,1
.L1136:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_untypeds, .-create_untypeds
	.align	2
	.globl	bi_finalise
	.type	bi_finalise, @function
bi_finalise:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,24(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-20(s0)
	sw	a4,16(a5)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	bi_finalise, .-bi_finalise
	.text
	.align	2
	.type	compare, @function
compare:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L1139
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	ble	a4,a5,.L1140
	li	a5,1
	j	.L1143
.L1140:
	li	a5,-1
	j	.L1143
.L1139:
	mv	a5,zero
.L1143:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	compare, .-compare
	.align	2
	.type	capsEqual, @function
capsEqual:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpaceType
	mv	a5,a0
	bne	s1,a5,.L1145
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	bne	s1,a5,.L1145
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpaceSize
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpaceSize
	mv	a5,a0
	bne	s1,a5,.L1145
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capBadge
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capBadge
	mv	a5,a0
	bne	s1,a5,.L1145
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capExtraComp
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capExtraComp
	mv	a5,a0
	bne	s1,a5,.L1145
	li	a5,1
	j	.L1146
.L1145:
	mv	a5,zero
.L1146:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	capsEqual, .-capsEqual
	.align	2
	.type	_compSpace, @function
_compSpace:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	lw	a1,-40(s0)
	mv	a0,a5
	call	compare
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1149
	lw	a5,-20(s0)
	j	.L1150
.L1149:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-44(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1151
	lw	a5,-20(s0)
	j	.L1150
.L1151:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	mv	a4,a5
	lw	a5,-48(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
	sub	a5,zero,a5
.L1150:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	_compSpace, .-_compSpace
	.align	2
	.type	_compBadge, @function
_compBadge:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compSpace
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1153
	lw	a5,-20(s0)
	j	.L1154
.L1153:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L1154:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compBadge, .-_compBadge
	.align	2
	.type	_compDepth, @function
_compDepth:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compBadge
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1156
	lw	a5,-20(s0)
	j	.L1157
.L1156:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	mv	a4,a5
	lw	a5,-56(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L1157:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compDepth, .-_compDepth
	.align	2
	.type	_compExtra, @function
_compExtra:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compDepth
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1159
	lw	a5,-20(s0)
	j	.L1160
.L1159:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	mv	a4,a5
	lw	a5,-60(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L1160:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compExtra, .-_compExtra
	.align	2
	.type	compExtra, @function
compExtra:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s5,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	mv	a6,a5
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	lw	a0,-36(s0)
	call	_compExtra
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	add	sp,sp,48
	jr	ra
	.size	compExtra, .-compExtra
	.align	2
	.type	_compSlot, @function
_compSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compExtra
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1164
	lw	a5,-20(s0)
	j	.L1165
.L1164:
	lw	a5,-36(s0)
	lw	a4,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	compare
	mv	a5,a0
.L1165:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compSlot, .-_compSlot
	.align	2
	.type	compSlot, @function
compSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s5,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	lw	a7,-40(s0)
	mv	a6,a5
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	lw	a0,-36(s0)
	call	_compSlot
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	add	sp,sp,48
	jr	ra
	.size	compSlot, .-compSlot
	.align	2
	.globl	cdtCapFindWithExtra
	.type	cdtCapFindWithExtra, @function
cdtCapFindWithExtra:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cte_depth_bits_cap
	mv	a5,a0
	mv	a4,a5
	mv	a3,s4
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	cdtFindWithExtra
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtCapFindWithExtra, .-cdtCapFindWithExtra
	.section	.rodata
	.align	2
.LC193:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/kernel/cdt.c"
	.align	2
.LC194:
	.string	"Cannot be equal here"
	.text
	.align	2
	.globl	cdtFindWithExtra
	.type	cdtFindWithExtra, @function
cdtFindWithExtra:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-20(s0)
	j	.L1171
.L1180:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
.L1179:
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	_compSpace
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	bnez	a5,.L1172
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	beqz	a5,.L1173
	lw	a5,-32(s0)
	j	.L1174
.L1173:
	li	a6,-1
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	_compExtra
	sw	a0,-28(s0)
.L1172:
	lw	a5,-28(s0)
	beqz	a5,.L1176
	li	a4,1
	beq	a5,a4,.L1177
	li	a4,-1
	bne	a5,a4,.L1175
	lw	a5,-32(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1175
.L1177:
	lw	a5,-32(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1175
.L1176:
	lui	a5,%hi(__func__.5093)
	add	a3,a5,%lo(__func__.5093)
	li	a2,144
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC194)
	add	a0,a5,%lo(.LC194)
	call	_fail
.L1175:
	lw	a5,-24(s0)
	bnez	a5,.L1179
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1171:
	li	a4,1
	lw	a5,-52(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1180
	mv	a5,zero
.L1174:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFindWithExtra, .-cdtFindWithExtra
	.align	2
	.globl	cdtFindAtDepth
	.type	cdtFindAtDepth, @function
cdtFindAtDepth:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-20(s0)
.L1187:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a6,-52(s0)
	lw	a5,-56(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	_compExtra
	mv	a5,a0
	beqz	a5,.L1183
	li	a4,1
	beq	a5,a4,.L1184
	li	a4,-1
	bne	a5,a4,.L1182
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1182
.L1184:
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1182
.L1183:
	lw	a5,-24(s0)
	j	.L1186
.L1182:
	lw	a5,-20(s0)
	bnez	a5,.L1187
	mv	a5,zero
.L1186:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFindAtDepth, .-cdtFindAtDepth
	.align	2
	.globl	cdtFind
	.type	cdtFind, @function
cdtFind:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	zero,-20(s0)
	j	.L1189
.L1192:
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	cdtFindAtDepth
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1190
	lw	a5,-24(s0)
	j	.L1191
.L1190:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1189:
	li	a4,1
	lw	a5,-56(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1192
	mv	a5,zero
.L1191:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFind, .-cdtFind
	.align	2
	.globl	cdtIsFinal
	.type	cdtIsFinal, @function
cdtIsFinal:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaTraverseForward
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1194
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L1194
	mv	a5,zero
	j	.L1195
.L1194:
	lw	a0,-36(s0)
	call	aaTraverseBackward
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1196
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L1196
	mv	a5,zero
	j	.L1195
.L1196:
	li	a5,1
.L1195:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtIsFinal, .-cdtIsFinal
	.section	.rodata
	.align	2
.LC195:
	.string	"!\"Should never actually find this node as it has zero size\""
	.text
	.align	2
	.globl	cdtFindInRange
	.type	cdtFindInRange, @function
cdtFindInRange:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-20(s0)
.L1203:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	mv	a3,zero
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	_compSpace
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	li	a5,-1
	bne	a4,a5,.L1198
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a4,a0
	lw	a5,-36(s0)
	bne	a4,a5,.L1199
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	a3,a5
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	bgeu	a3,a5,.L1199
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	add	a4,s1,a5
	lw	a5,-40(s0)
	bleu	a4,a5,.L1199
	lw	a5,-24(s0)
	j	.L1200
.L1199:
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1201
.L1198:
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L1202
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1201
.L1202:
	lui	a5,%hi(__FUNCTION__.5140)
	add	a3,a5,%lo(__FUNCTION__.5140)
	li	a2,229
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC195)
	add	a0,a5,%lo(.LC195)
	call	_assert_fail
.L1201:
	lw	a5,-20(s0)
	bnez	a5,.L1203
	mv	a5,zero
.L1200:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtFindInRange, .-cdtFindInRange
	.align	2
	.type	isCDTParentOf, @function
isCDTParentOf:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameRegionAs
	mv	a5,a0
	bnez	a5,.L1205
	mv	a5,zero
	j	.L1206
.L1205:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1207
	lw	a5,-24(s0)
	beqz	a5,.L1207
	li	a5,1
	j	.L1206
.L1207:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L1208
	mv	a5,zero
	j	.L1206
.L1208:
	li	a5,1
.L1206:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isCDTParentOf, .-isCDTParentOf
	.align	2
	.type	_cdtFindBadgedChild, @function
_cdtFindBadgedChild:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	sw	a0,-28(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	sw	a0,-36(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-40(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
.L1215:
	lw	a5,-24(s0)
	sw	a5,-44(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cte_depth_bits_cap
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	lw	a4,-40(s0)
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-44(s0)
	call	_compDepth
	sw	a0,-48(s0)
	lw	a4,-48(s0)
	li	a5,-1
	bne	a4,a5,.L1210
	lw	a5,-20(s0)
	beqz	a5,.L1211
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1212
.L1211:
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L1212:
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1213
.L1210:
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L1214
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1213
.L1214:
	lui	a5,%hi(__FUNCTION__.5160)
	add	a3,a5,%lo(__FUNCTION__.5160)
	li	a2,281
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC195)
	add	a0,a5,%lo(.LC195)
	call	_assert_fail
.L1213:
	lw	a5,-24(s0)
	bnez	a5,.L1215
	lw	a5,-20(s0)
	beqz	a5,.L1216
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1216
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	isCDTParentOf
	mv	a5,a0
	bnez	a5,.L1217
.L1216:
	mv	a5,zero
	j	.L1218
.L1217:
	lw	a5,-20(s0)
.L1218:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_cdtFindBadgedChild, .-_cdtFindBadgedChild
	.align	2
	.type	_cdtFindChild, @function
_cdtFindChild:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	sw	a0,-28(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	sw	a0,-36(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
.L1225:
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	mv	a3,zero
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-40(s0)
	call	_compSpace
	sw	a0,-44(s0)
	lw	a4,-44(s0)
	li	a5,-1
	bne	a4,a5,.L1220
	lw	a5,-20(s0)
	beqz	a5,.L1221
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1222
.L1221:
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L1222:
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1223
.L1220:
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L1224
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1223
.L1224:
	lui	a5,%hi(__FUNCTION__.5173)
	add	a3,a5,%lo(__FUNCTION__.5173)
	li	a2,322
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC195)
	add	a0,a5,%lo(.LC195)
	call	_assert_fail
.L1223:
	lw	a5,-24(s0)
	bnez	a5,.L1225
	lw	a5,-20(s0)
	beqz	a5,.L1226
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1226
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameRegionAs
	mv	a5,a0
	bnez	a5,.L1227
.L1226:
	mv	a5,zero
	j	.L1228
.L1227:
	lw	a5,-20(s0)
.L1228:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_cdtFindChild, .-_cdtFindChild
	.align	2
	.globl	cdtFindChild
	.type	cdtFindChild, @function
cdtFindChild:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	bnez	a5,.L1230
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	li	a0,1
	call	cdtFindInRange
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1230
	lw	a5,-20(s0)
	j	.L1231
.L1230:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	a5,a0
	beqz	a5,.L1232
	lw	a0,-36(s0)
	call	_cdtFindBadgedChild
	mv	a5,a0
	j	.L1231
.L1232:
	lw	a0,-36(s0)
	call	_cdtFindChild
	mv	a5,a0
.L1231:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtFindChild, .-cdtFindChild
	.align	2
	.type	cdtInsertTree, @function
cdtInsertTree:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtInsertTree, .-cdtInsertTree
	.section	.rodata
	.align	2
.LC196:
	.string	"cap_get_capType(newSlot->cap) != cap_null_cap"
	.align	2
.LC197:
	.string	"!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap"
	.text
	.align	2
	.globl	cdtInsert
	.type	cdtInsert, @function
cdtInsert:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1235
	lui	a5,%hi(__FUNCTION__.5188)
	add	a3,a5,%lo(__FUNCTION__.5188)
	li	a2,360
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC196)
	add	a0,a5,%lo(.LC196)
	call	_assert_fail
.L1235:
	lw	a5,-36(s0)
	beqz	a5,.L1236
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1236
	lui	a5,%hi(__FUNCTION__.5188)
	add	a3,a5,%lo(__FUNCTION__.5188)
	li	a2,361
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC197)
	add	a0,a5,%lo(.LC197)
	call	_assert_fail
.L1236:
	lw	a5,-36(s0)
	beqz	a5,.L1237
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	beq	s1,a5,.L1238
.L1237:
	sw	zero,-20(s0)
	j	.L1239
.L1238:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cte_depth_bits_cap
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	bne	a4,a5,.L1239
	lw	a5,-20(s0)
	add	a5,a5,-1
	sw	a5,-20(s0)
.L1239:
	lw	s1,-40(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-20(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a0,-40(s0)
	call	cdtInsertTree
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtInsert, .-cdtInsert
	.section	.rodata
	.align	2
.LC198:
	.string	"cap_get_capType(slot->cap) != cap_null_cap"
	.text
	.align	2
	.globl	cdtRemove
	.type	cdtRemove, @function
cdtRemove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1241
	lui	a5,%hi(__FUNCTION__.5192)
	add	a3,a5,%lo(__FUNCTION__.5192)
	li	a2,377
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC198)
	add	a0,a5,%lo(.LC198)
	call	_assert_fail
.L1241:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtRemove, .-cdtRemove
	.section	.rodata
	.align	2
.LC199:
	.string	"cap_get_capType(oldSlot->cap) != cap_null_cap"
	.text
	.align	2
	.globl	cdtMove
	.type	cdtMove, @function
cdtMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1243
	lui	a5,%hi(__FUNCTION__.5197)
	add	a3,a5,%lo(__FUNCTION__.5197)
	li	a2,385
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC199)
	add	a0,a5,%lo(.LC199)
	call	_assert_fail
.L1243:
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1244
	lui	a5,%hi(__FUNCTION__.5197)
	add	a3,a5,%lo(__FUNCTION__.5197)
	li	a2,386
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC196)
	add	a0,a5,%lo(.LC196)
	call	_assert_fail
.L1244:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	lw	s1,-24(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,a5
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtMove, .-cdtMove
	.align	2
	.globl	cdtUpdate
	.type	cdtUpdate, @function
cdtUpdate:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-20(s0)
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	capsEqual
	mv	a5,a0
	beqz	a5,.L1246
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	j	.L1248
.L1246:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,a5
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1248:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtUpdate, .-cdtUpdate
	.section	.rodata
	.align	2
.LC200:
	.string	"slot1 != slot2"
	.text
	.align	2
	.globl	cdtSwap
	.type	cdtSwap, @function
cdtSwap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-56(s0)
	lw	a4,-44(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L1250
	lui	a5,%hi(__FUNCTION__.5210)
	add	a3,a5,%lo(__FUNCTION__.5210)
	li	a2,412
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC200)
	add	a0,a5,%lo(.LC200)
	call	_assert_fail
.L1250:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1251
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-44(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1251:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1252
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-56(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1252:
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	sw	a0,-20(s0)
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	sw	a0,-24(s0)
	lw	s1,-44(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-24(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	s1,-56(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-20(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a5,-44(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lw	a4,-48(s0)
	sw	a4,4(a5)
	lw	a5,-56(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1253
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-44(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1253:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1255
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-56(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1255:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtSwap, .-cdtSwap
	.align	2
	.type	aaSucc, @function
aaSucc:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1257
.L1258:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
.L1257:
	lw	a5,-20(s0)
	bnez	a5,.L1258
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSucc, .-aaSucc
	.align	2
	.type	aaPred, @function
aaPred:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1261
.L1262:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
.L1261:
	lw	a5,-20(s0)
	bnez	a5,.L1262
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaPred, .-aaPred
	.align	2
	.type	aaParent, @function
aaParent:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	j	.L1265
.L1270:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	compSlot
	mv	a5,a0
	beqz	a5,.L1266
	li	a4,1
	beq	a5,a4,.L1267
	li	a4,-1
	beq	a5,a4,.L1268
	j	.L1265
.L1268:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1265
.L1267:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1265
.L1266:
	lw	a5,-20(s0)
	j	.L1269
.L1265:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L1270
	lw	a5,-20(s0)
.L1269:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaParent, .-aaParent
	.align	2
	.type	aaTraverseBackward, @function
aaTraverseBackward:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1272
	lw	a0,-24(s0)
	call	aaPred
	mv	a5,a0
	j	.L1273
.L1272:
	lw	a0,-36(s0)
	call	aaParent
	sw	a0,-20(s0)
	j	.L1274
.L1276:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a0,-20(s0)
	call	aaParent
	sw	a0,-20(s0)
.L1274:
	lw	a5,-20(s0)
	beqz	a5,.L1275
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	bne	a4,a5,.L1276
.L1275:
	lw	a5,-20(s0)
.L1273:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaTraverseBackward, .-aaTraverseBackward
	.align	2
	.type	aaTraverseForward, @function
aaTraverseForward:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1278
	lw	a0,-24(s0)
	call	aaSucc
	mv	a5,a0
	j	.L1279
.L1278:
	lw	a0,-36(s0)
	call	aaParent
	sw	a0,-20(s0)
	j	.L1280
.L1282:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a0,-20(s0)
	call	aaParent
	sw	a0,-20(s0)
.L1280:
	lw	a5,-20(s0)
	beqz	a5,.L1281
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	bne	a4,a5,.L1282
.L1281:
	lw	a5,-20(s0)
.L1279:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaTraverseForward, .-aaTraverseForward
	.align	2
	.type	aaLevel, @function
aaLevel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1284
	mv	a5,zero
	j	.L1285
.L1284:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
.L1285:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aaLevel, .-aaLevel
	.align	2
	.type	min, @function
min:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	ble	a5,a4,.L1288
	mv	a5,a4
.L1288:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	min, .-min
	.section	.rodata
	.align	2
.LC201:
	.string	"inserting null CTE"
	.align	2
.LC202:
	.string	"newSlot != rootSlot"
	.align	2
.LC203:
	.string	"Inserting duplicate"
	.text
	.align	2
	.type	aaInsert, @function
aaInsert:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	bnez	a5,.L1290
	lui	a5,%hi(__func__.5277)
	add	a3,a5,%lo(__func__.5277)
	li	a2,556
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC201)
	add	a0,a5,%lo(.LC201)
	call	_fail
.L1290:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L1291
	lui	a5,%hi(__FUNCTION__.5278)
	add	a3,a5,%lo(__FUNCTION__.5278)
	li	a2,558
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC202)
	add	a0,a5,%lo(.LC202)
	call	_assert_fail
.L1291:
	lw	a5,-36(s0)
	bnez	a5,.L1292
	lw	a5,-40(s0)
	add	a5,a5,8
	li	a1,1
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-40(s0)
	j	.L1293
.L1292:
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	compSlot
	mv	a5,a0
	li	a4,-1
	beq	a5,a4,.L1295
	li	a4,1
	bne	a5,a4,.L1298
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	aaInsert
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	j	.L1297
.L1295:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	aaInsert
	sw	a0,-24(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	j	.L1297
.L1298:
	lui	a5,%hi(__func__.5277)
	add	a3,a5,%lo(__func__.5277)
	li	a2,581
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC203)
	add	a0,a5,%lo(.LC203)
	call	_fail
.L1297:
	lw	a0,-36(s0)
	call	aaSkew
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaSplit
	sw	a0,-36(s0)
	lw	a5,-36(s0)
.L1293:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaInsert, .-aaInsert
	.section	.rodata
	.align	2
.LC204:
	.string	"removing null"
	.align	2
.LC205:
	.string	"removing from null"
	.text
	.align	2
	.type	aaRemove, @function
aaRemove:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L1300
	lui	a5,%hi(__func__.5290)
	add	a3,a5,%lo(__func__.5290)
	li	a2,596
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC204)
	add	a0,a5,%lo(.LC204)
	call	_fail
.L1300:
	lw	a5,-40(s0)
	bnez	a5,.L1301
	lui	a5,%hi(__func__.5290)
	add	a3,a5,%lo(__func__.5290)
	li	a2,599
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC205)
	add	a0,a5,%lo(.LC205)
	call	_fail
.L1301:
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	compSlot
	mv	a5,a0
	li	a4,-1
	beq	a5,a4,.L1303
	li	a4,1
	bne	a5,a4,.L1307
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	aaRemove
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	j	.L1305
.L1303:
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a2,-44(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	aaRemove
	sw	a0,-24(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	j	.L1305
.L1307:
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	aaRemoveNode
	sw	a0,-40(s0)
.L1305:
	lw	a0,-40(s0)
	call	aaRebalance
	sw	a0,-40(s0)
	lw	a5,-40(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaRemove, .-aaRemove
	.align	2
	.type	aaRemoveNode, @function
aaRemoveNode:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-56(s0)
	lw	a4,8(a5)
	sw	a4,-40(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1309
	lw	a0,-20(s0)
	call	aaPred
	sw	a0,-28(s0)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	li	a0,1
	call	aaRemove
	sw	a0,-20(s0)
	lw	a5,-28(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-28(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-28(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-28(s0)
	j	.L1312
.L1309:
	lw	a5,-24(s0)
	beqz	a5,.L1311
	lw	a0,-24(s0)
	call	aaSucc
	sw	a0,-32(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	li	a0,1
	call	aaRemove
	sw	a0,-24(s0)
	lw	a5,-32(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-32(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-32(s0)
	add	a5,a5,8
	mv	a1,zero
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-32(s0)
	j	.L1312
.L1311:
	mv	a5,zero
.L1312:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	aaRemoveNode, .-aaRemoveNode
	.align	2
	.type	aaRebalance, @function
aaRebalance:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1314
	mv	a5,zero
	j	.L1315
.L1314:
	lw	a0,-36(s0)
	call	aaDecLevel
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaSkew
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSkew
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	beqz	a5,.L1316
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSkew
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
.L1316:
	lw	a0,-36(s0)
	call	aaSplit
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSplit
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-36(s0)
.L1315:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaRebalance, .-aaRebalance
	.align	2
	.type	aaDecLevel, @function
aaDecLevel:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1318
	mv	a5,zero
	j	.L1319
.L1318:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-20(s0)
	call	aaLevel
	mv	s1,a0
	lw	a0,-24(s0)
	call	aaLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	min
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	bleu	a4,a5,.L1320
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-24(s0)
	beqz	a5,.L1320
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	bleu	a4,a5,.L1320
	lw	a5,-24(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
.L1320:
	lw	a5,-36(s0)
.L1319:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaDecLevel, .-aaDecLevel
	.section	.rodata
	.align	2
.LC206:
	.string	"mdb_node_get_cdtLevel(right->cteMDBNode) == level"
	.text
	.align	2
	.type	aaSplit, @function
aaSplit:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1322
	mv	a5,zero
	j	.L1323
.L1322:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1324
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1324
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s1,a0
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	bne	s1,a5,.L1324
	lw	a5,-36(s0)
	add	s1,a5,8
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	beq	a4,a5,.L1325
	lui	a5,%hi(__FUNCTION__.5321)
	add	a3,a5,%lo(__FUNCTION__.5321)
	li	a2,740
	lui	a5,%hi(.LC193)
	add	a1,a5,%lo(.LC193)
	lui	a5,%hi(.LC206)
	add	a0,a5,%lo(.LC206)
	call	_assert_fail
.L1325:
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-20(s0)
	j	.L1323
.L1324:
	lw	a5,-36(s0)
.L1323:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSplit, .-aaSplit
	.align	2
	.type	aaSkew, @function
aaSkew:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1327
	mv	a5,zero
	j	.L1328
.L1327:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1329
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s1,a0
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	bne	s1,a5,.L1329
	lw	a5,-36(s0)
	add	s1,a5,8
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	j	.L1328
.L1329:
	lw	a5,-36(s0)
.L1328:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSkew, .-aaSkew
	.section	.rodata
	.align	2
.LC207:
	.string	"NullCap"
	.align	2
.LC208:
	.string	"Untyped"
	.align	2
.LC209:
	.string	"Endpoint"
	.align	2
.LC210:
	.string	"AsyncEndpoint"
	.align	2
.LC211:
	.string	"Reply"
	.align	2
.LC212:
	.string	"CNode"
	.align	2
.LC213:
	.string	"Thread"
	.align	2
.LC214:
	.string	"?"
	.text
	.align	2
	.type	printCap, @function
printCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	bgtu	a5,a4,.L1331
	sll	a4,a5,2
	lui	a5,%hi(.L1333)
	add	a5,a5,%lo(.L1333)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1333:
	.word	.L1332
	.word	.L1331
	.word	.L1334
	.word	.L1331
	.word	.L1335
	.word	.L1331
	.word	.L1336
	.word	.L1331
	.word	.L1337
	.word	.L1331
	.word	.L1338
	.word	.L1331
	.word	.L1339
	.text
.L1332:
	lui	a5,%hi(.LC207)
	add	a5,a5,%lo(.LC207)
	j	.L1340
.L1334:
	lui	a5,%hi(.LC208)
	add	a5,a5,%lo(.LC208)
	j	.L1340
.L1335:
	lui	a5,%hi(.LC209)
	add	a5,a5,%lo(.LC209)
	j	.L1340
.L1336:
	lui	a5,%hi(.LC210)
	add	a5,a5,%lo(.LC210)
	j	.L1340
.L1337:
	lui	a5,%hi(.LC211)
	add	a5,a5,%lo(.LC211)
	j	.L1340
.L1338:
	lui	a5,%hi(.LC212)
	add	a5,a5,%lo(.LC212)
	j	.L1340
.L1339:
	lui	a5,%hi(.LC213)
	add	a5,a5,%lo(.LC213)
	j	.L1340
.L1331:
	lui	a5,%hi(.LC214)
	add	a5,a5,%lo(.LC214)
.L1340:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	printCap, .-printCap
	.section	.rodata
	.align	2
.LC215:
	.string	"%s [NULL]@0x%x"
	.align	2
.LC216:
	.string	"%s [%d %s(%d) { addr = 0x%x, size = 0x%x } left: 0x%x right: 0x%x badge: %d depth: %d extra: 0x%x]@0x%x\n"
	.text
	.align	2
	.globl	printCTE
	.type	printCTE, @function
printCTE:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-56(s0)
	bnez	a5,.L1342
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lui	a5,%hi(.LC215)
	add	a0,a5,%lo(.LC215)
	call	printf
	j	.L1350
.L1342:
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s6,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	printCap
	mv	s7,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	s8,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1344
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s4,a5
	j	.L1345
.L1344:
	mv	s4,zero
.L1345:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1346
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s5,a0
	j	.L1347
.L1346:
	mv	s5,zero
.L1347:
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	s9,a0
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	s1,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s2,a0
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s3,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1348
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a4,a0
	j	.L1349
.L1348:
	mv	a4,zero
.L1349:
	lw	a5,-56(s0)
	sw	a5,16(sp)
	sw	a4,12(sp)
	sw	s3,8(sp)
	sw	s2,4(sp)
	sw	s1,0(sp)
	mv	a7,s9
	mv	a6,s5
	mv	a5,s4
	mv	a4,s8
	mv	a3,s7
	mv	a2,s6
	lw	a1,-52(s0)
	lui	a0,%hi(.LC216)
	add	a0,a0,%lo(.LC216)
	call	printf
.L1350:
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	lw	s3,76(sp)
	lw	s4,72(sp)
	lw	s5,68(sp)
	lw	s6,64(sp)
	lw	s7,60(sp)
	lw	s8,56(sp)
	lw	s9,52(sp)
	add	sp,sp,96
	jr	ra
	.size	printCTE, .-printCTE
	.align	2
	.globl	lookupCap
	.type	lookupCap, @function
lookupCap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1352
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	j	.L1351
.L1352:
	sw	zero,-36(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
.L1351:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupCap, .-lookupCap
	.align	2
	.globl	lookupCapAndSlot
	.type	lookupCapAndSlot, @function
lookupCapAndSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1356
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	j	.L1355
.L1356:
	sw	zero,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a4,-28(s0)
	sw	a4,12(a5)
.L1355:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupCapAndSlot, .-lookupCapAndSlot
	.align	2
	.globl	lookupSlot
	.type	lookupSlot, @function
lookupSlot:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lw	a5,-68(s0)
	and	a5,a5,-512
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	add	a5,s0,-44
	li	a4,32
	lw	a3,-72(s0)
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	resolveAddressBits
	lw	a5,-44(s0)
	sw	a5,-52(s0)
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	lookupSlot, .-lookupSlot
	.align	2
	.globl	lookupSlotForCNodeOp
	.type	lookupSlotForCNodeOp, @function
lookupSlotForCNodeOp:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	zero,-40(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1362
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	call	lookup_fault_invalid_root_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1368
.L1362:
	lw	a5,-68(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L1364
	lw	a5,-68(s0)
	sltu	a5,a5,33
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L1365
.L1364:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,32
	sw	a4,12(a5)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1368
.L1365:
	add	a5,s0,-36
	lw	a4,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	mv	a0,a5
	call	resolveAddressBits
	lw	a5,-36(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1366
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1368
.L1366:
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1367
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	lw	a5,-28(s0)
	mv	a1,a5
	mv	a0,zero
	call	lookup_fault_depth_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1368
.L1367:
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	sw	zero,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L1368:
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	lookupSlotForCNodeOp, .-lookupSlotForCNodeOp
	.align	2
	.globl	lookupSourceSlot
	.type	lookupSourceSlot, @function
lookupSourceSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	li	a0,1
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupSourceSlot, .-lookupSourceSlot
	.align	2
	.globl	lookupTargetSlot
	.type	lookupTargetSlot, @function
lookupTargetSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	mv	a0,zero
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupTargetSlot, .-lookupTargetSlot
	.align	2
	.globl	lookupPivotSlot
	.type	lookupPivotSlot, @function
lookupPivotSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	li	a0,1
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupPivotSlot, .-lookupPivotSlot
	.section	.rodata
	.align	2
.LC217:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/kernel/cspace.c"
	.align	2
.LC218:
	.string	"levelBits != 0"
	.text
	.align	2
	.globl	resolveAddressBits
	.type	resolveAddressBits, @function
resolveAddressBits:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lw	a5,-68(s0)
	sw	a5,-40(s0)
	sw	zero,-44(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1376
	call	lookup_fault_invalid_root_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1375
.L1376:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodeGuardSize
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	sltu	a5,a5,a4
	and	a5,a5,0xff
	beqz	a5,.L1378
	lw	a2,-20(s0)
	lw	a1,-68(s0)
	mv	a0,zero
	call	lookup_fault_guard_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1375
.L1378:
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-68(s0)
.L1383:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bnez	a5,.L1379
	lui	a5,%hi(__FUNCTION__.5394)
	add	a3,a5,%lo(__FUNCTION__.5394)
	li	a2,168
	lui	a5,%hi(.LC217)
	add	a1,a5,%lo(.LC217)
	lui	a5,%hi(.LC218)
	add	a0,a5,%lo(.LC218)
	call	_assert_fail
.L1379:
	lw	a4,-28(s0)
	lw	a5,-68(s0)
	sltu	a5,a5,a4
	and	a5,a5,0xff
	beqz	a5,.L1380
	lw	a1,-68(s0)
	lw	a0,-28(s0)
	call	lookup_fault_depth_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1375
.L1380:
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-64(s0)
	srl	a4,a4,a5
	li	a3,1
	lw	a5,-24(s0)
	sll	a5,a3,a5
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sll	s1,a5,4
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	add	a5,s1,a5
	sw	a5,-36(s0)
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sltu	a5,a5,a4
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L1381
	sw	zero,-48(s0)
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	sw	zero,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1375
.L1381:
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-68(s0)
	lw	a5,-36(s0)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1383
	sw	zero,-48(s0)
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	lw	a5,-68(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L1375:
	lw	a0,-52(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	resolveAddressBits, .-resolveAddressBits
	.align	2
	.globl	handleFault
	.type	handleFault, @function
handleFault:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(current_fault)
	lw	a4,%lo(current_fault)(a5)
	sw	a4,-28(s0)
	add	a5,a5,%lo(current_fault)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a0,-36(s0)
	call	sendFaultIPC
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1387
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-36(s0)
	call	handleDoubleFault
.L1387:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleFault, .-handleFault
	.align	2
	.globl	sendFaultIPC
	.type	sendFaultIPC, @function
sendFaultIPC:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(current_lookup_fault)
	lw	a4,%lo(current_lookup_fault)(a5)
	sw	a4,-48(s0)
	add	a5,a5,%lo(current_lookup_fault)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a5,-52(s0)
	lw	a5,176(a5)
	sw	a5,-20(s0)
	add	a5,s0,-40
	lw	a2,-20(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	lookupCap
	lw	a5,-40(s0)
	beqz	a5,.L1389
	mv	a1,zero
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	li	a5,1
	j	.L1393
.L1389:
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L1391
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	beqz	a5,.L1391
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	beqz	a5,.L1391
	lw	a5,-52(s0)
	lui	a4,%hi(current_fault)
	lw	a3,%lo(current_fault)(a4)
	sw	a3,148(a5)
	add	a4,a4,%lo(current_fault)
	lw	a4,4(a4)
	sw	a4,152(a5)
	lui	a5,%hi(current_fault)
	lw	a0,%lo(current_fault)(a5)
	add	a5,a5,%lo(current_fault)
	lw	a1,4(a5)
	call	fault_get_faultType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1392
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,156(a5)
	lw	a4,-44(s0)
	sw	a4,160(a5)
.L1392:
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	s1,a0
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	lw	a4,-52(s0)
	li	a3,1
	mv	a2,s1
	mv	a1,zero
	li	a0,1
	call	sendIPC
	mv	a5,zero
	j	.L1393
.L1391:
	mv	a1,zero
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,1
.L1393:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	sendFaultIPC, .-sendFaultIPC
	.section	.rodata
	.align	2
.LC219:
	.string	"null fault"
	.align	2
.LC220:
	.string	"receive"
	.align	2
.LC221:
	.string	"send"
	.align	2
.LC222:
	.string	"cap fault in %s phase at address 0x%x"
	.align	2
.LC223:
	.string	"code"
	.align	2
.LC224:
	.string	"data"
	.align	2
.LC225:
	.string	"vm fault on %s at address 0x%x with status 0x%x"
	.align	2
.LC226:
	.string	"unknown syscall 0x%x"
	.align	2
.LC227:
	.string	"user exception 0x%x code 0x%x"
	.align	2
.LC228:
	.string	"unknown fault"
	.text
	.align	2
	.type	print_fault, @function
print_fault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_get_faultType
	mv	a5,a0
	li	a4,4
	bgtu	a5,a4,.L1395
	sll	a4,a5,2
	lui	a5,%hi(.L1397)
	add	a5,a5,%lo(.L1397)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1397:
	.word	.L1396
	.word	.L1398
	.word	.L1399
	.word	.L1400
	.word	.L1401
	.text
.L1396:
	lui	a5,%hi(.LC219)
	add	a0,a5,%lo(.LC219)
	call	printf
	j	.L1402
.L1398:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_cap_fault_get_inReceivePhase
	mv	a5,a0
	beqz	a5,.L1403
	lui	a5,%hi(.LC220)
	add	s1,a5,%lo(.LC220)
	j	.L1404
.L1403:
	lui	a5,%hi(.LC221)
	add	s1,a5,%lo(.LC221)
.L1404:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_cap_fault_get_address
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lui	a5,%hi(.LC222)
	add	a0,a5,%lo(.LC222)
	call	printf
	j	.L1402
.L1399:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_instructionFault
	mv	a5,a0
	beqz	a5,.L1405
	lui	a5,%hi(.LC223)
	add	s1,a5,%lo(.LC223)
	j	.L1406
.L1405:
	lui	a5,%hi(.LC224)
	add	s1,a5,%lo(.LC224)
.L1406:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_address
	mv	s2,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_FSR
	mv	a5,a0
	mv	a3,a5
	mv	a2,s2
	mv	a1,s1
	lui	a5,%hi(.LC225)
	add	a0,a5,%lo(.LC225)
	call	printf
	j	.L1402
.L1400:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_unknown_syscall_get_syscallNumber
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC226)
	add	a0,a5,%lo(.LC226)
	call	printf
	j	.L1402
.L1401:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_user_exception_get_number
	mv	s1,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_user_exception_get_code
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lui	a5,%hi(.LC227)
	add	a0,a5,%lo(.LC227)
	call	printf
	j	.L1402
.L1395:
	lui	a5,%hi(.LC228)
	add	a0,a5,%lo(.LC228)
	call	printf
	nop
.L1402:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	add	sp,sp,32
	jr	ra
	.size	print_fault, .-print_fault
	.section	.rodata
	.align	2
.LC229:
	.string	"Caught "
	.align	2
.LC230:
	.string	"\nwhile trying to handle:"
	.align	2
.LC231:
	.string	"\nin thread 0x%x "
	.align	2
.LC232:
	.string	"at address 0x%x\n"
	.text
	.align	2
	.globl	handleDoubleFault
	.type	handleDoubleFault, @function
handleDoubleFault:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lui	a5,%hi(current_fault)
	lw	a4,%lo(current_fault)(a5)
	sw	a4,-24(s0)
	add	a5,a5,%lo(current_fault)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(.LC229)
	add	a0,a5,%lo(.LC229)
	call	printf
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	print_fault
	lui	a5,%hi(.LC230)
	add	a0,a5,%lo(.LC230)
	call	puts
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	print_fault
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC231)
	add	a0,a5,%lo(.LC231)
	call	printf
	lw	a0,-36(s0)
	call	getRestartPC
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC232)
	add	a0,a5,%lo(.LC232)
	call	printf
	mv	a1,zero
	lw	a0,-36(s0)
	call	setThreadState
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleDoubleFault, .-handleDoubleFault
	.align	2
	.type	isBlocked, @function
isBlocked:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,132(a5)
	sw	a4,-48(s0)
	lw	a4,136(a5)
	sw	a4,-44(s0)
	lw	a5,140(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	beqz	a5,.L1410
	add	a4,a5,-3
	li	a5,3
	bgtu	a4,a5,.L1409
.L1410:
	li	a5,1
	j	.L1411
.L1409:
	mv	a5,zero
.L1411:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isBlocked, .-isBlocked
	.align	2
	.type	isRunnable, @function
isRunnable:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,132(a5)
	sw	a4,-48(s0)
	lw	a4,136(a5)
	sw	a4,-44(s0)
	lw	a5,140(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	li	a4,1
	bltu	a5,a4,.L1413
	li	a4,2
	bleu	a5,a4,.L1414
	li	a4,7
	bne	a5,a4,.L1413
.L1414:
	li	a5,1
	j	.L1415
.L1413:
	mv	a5,zero
.L1415:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isRunnable, .-isRunnable
	.section	.boot.text
	.align	2
	.globl	configureIdleThread
	.type	configureIdleThread, @function
configureIdleThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	Arch_configureIdleThread
	li	a1,8
	lw	a0,-20(s0)
	call	setThreadState
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	configureIdleThread, .-configureIdleThread
	.section	.rodata
	.align	2
.LC233:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/kernel/thread.c"
	.align	2
.LC234:
	.string	"Current thread is blocked"
	.text
	.align	2
	.globl	activateThread
	.type	activateThread, @function
activateThread:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,132(a5)
	sw	a4,-48(s0)
	lw	a4,136(a5)
	sw	a4,-44(s0)
	lw	a5,140(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	li	a4,2
	beq	a5,a4,.L1419
	li	a4,2
	bgtu	a5,a4,.L1420
	li	a4,1
	beq	a5,a4,.L1424
	j	.L1418
.L1420:
	li	a4,7
	beq	a5,a4,.L1424
	li	a4,8
	beq	a5,a4,.L1425
	j	.L1418
.L1419:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	setNextPC
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,1
	mv	a0,a5
	call	setThreadState
	j	.L1423
.L1418:
	lui	a5,%hi(__func__.5459)
	add	a3,a5,%lo(__func__.5459)
	li	a2,89
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC234)
	add	a0,a5,%lo(.LC234)
	call	_fail
.L1424:
	nop
	j	.L1423
.L1425:
	nop
.L1423:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	activateThread, .-activateThread
	.align	2
	.globl	suspend
	.type	suspend, @function
suspend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	ipcCancel
	lw	a0,-20(s0)
	call	deleteCallerCap
	mv	a1,zero
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	suspend, .-suspend
	.align	2
	.globl	restart
	.type	restart, @function
restart:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	isBlocked
	mv	a5,a0
	beqz	a5,.L1429
	lw	a0,-20(s0)
	call	ipcCancel
	lw	a0,-20(s0)
	call	setupReplyMaster
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a0,-20(s0)
	call	switchIfRequiredTo
.L1429:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	restart, .-restart
	.align	2
	.globl	doIPCTransfer
	.type	doIPCTransfer, @function
doIPCTransfer:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a1,-52(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_get_faultType
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1431
	lw	a1,-36(s0)
	mv	a0,zero
	call	lookupIPCBuffer
	sw	a0,-24(s0)
	lw	a7,-56(s0)
	lw	a6,-20(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	doNormalTransfer
	j	.L1433
.L1431:
	lw	a3,-20(s0)
	lw	a2,-52(s0)
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	doFaultTransfer
.L1433:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	doIPCTransfer, .-doIPCTransfer
	.section	.rodata
	.align	2
.LC235:
	.string	"thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply"
	.align	2
.LC236:
	.string	"cap_get_capType(replySlot->cap) == cap_reply_cap"
	.align	2
.LC237:
	.string	"cap_reply_cap_get_capInCDT(replySlot->cap)"
	.text
	.align	2
	.globl	doReplyTransfer
	.type	doReplyTransfer, @function
doReplyTransfer:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	lw	a4,132(a5)
	sw	a4,-64(s0)
	lw	a4,136(a5)
	sw	a4,-60(s0)
	lw	a5,140(a5)
	sw	a5,-56(s0)
	add	a5,s0,-64
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a4,a0
	li	a5,5
	beq	a4,a5,.L1435
	lui	a5,%hi(__FUNCTION__.5481)
	add	a3,a5,%lo(__FUNCTION__.5481)
	li	a2,138
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC235)
	add	a0,a5,%lo(.LC235)
	call	_assert_fail
.L1435:
	lw	a5,-40(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_get_faultType
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1436
	mv	a5,zero
	lw	a4,-40(s0)
	li	a3,1
	mv	a2,zero
	mv	a1,zero
	lw	a0,-36(s0)
	call	doIPCTransfer
	li	a1,1
	lw	a0,-40(s0)
	call	setThreadState
	lw	a0,-40(s0)
	call	attemptSwitchTo
	j	.L1437
.L1436:
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	handleFaultReply
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,148
	mv	a0,a5
	call	fault_null_fault_ptr_new
	lw	a5,-20(s0)
	beqz	a5,.L1438
	li	a1,2
	lw	a0,-40(s0)
	call	setThreadState
	lw	a0,-40(s0)
	call	attemptSwitchTo
	j	.L1437
.L1438:
	mv	a1,zero
	lw	a0,-40(s0)
	call	setThreadState
.L1437:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1439
	lw	a5,-40(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1440
	lui	a5,%hi(__FUNCTION__.5481)
	add	a3,a5,%lo(__FUNCTION__.5481)
	li	a2,158
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC236)
	add	a0,a5,%lo(.LC236)
	call	_assert_fail
.L1440:
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	bnez	a5,.L1441
	lui	a5,%hi(__FUNCTION__.5481)
	add	a3,a5,%lo(__FUNCTION__.5481)
	li	a2,159
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC237)
	add	a0,a5,%lo(.LC237)
	call	_assert_fail
.L1441:
	lw	a0,-24(s0)
	call	cdtRemove
	lw	a0,-44(s0)
	call	cdtRemove
	lw	s1,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	s1,-24(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L1443
.L1439:
	lw	a0,-36(s0)
	call	deleteCallerCap
.L1443:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	doReplyTransfer, .-doReplyTransfer
	.align	2
	.globl	doNormalTransfer
	.type	doNormalTransfer, @function
doNormalTransfer:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	li	a1,11
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a0,a5
	call	messageInfoFromWord
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-68(s0)
	beqz	a5,.L1445
	lw	a2,-28(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	lookupExtraCaps
	sw	a0,-20(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-40(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-36(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1447
	sw	zero,-40(s0)
	j	.L1447
.L1445:
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-40(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-36(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	sw	zero,-40(s0)
.L1447:
	lw	a0,-28(s0)
	call	message_info_get_msgLength
	mv	a5,a0
	mv	a4,a5
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	copyMRs
	sw	a0,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-96(s0)
	lw	a5,-36(s0)
	sw	a5,-92(s0)
	lw	a5,-32(s0)
	sw	a5,-88(s0)
	add	a1,s0,-96
	lw	a5,-80(s0)
	lw	a4,-76(s0)
	lw	a3,-72(s0)
	lw	a2,-60(s0)
	lw	a0,-28(s0)
	call	transferCaps
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	message_info_set_msgLength
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-28(s0)
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,11
	lw	a0,-72(s0)
	call	setRegister
	lw	a2,-64(s0)
	li	a1,10
	lw	a0,-72(s0)
	call	setRegister
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	add	sp,sp,96
	jr	ra
	.size	doNormalTransfer, .-doNormalTransfer
	.align	2
	.globl	doFaultTransfer
	.type	doFaultTransfer, @function
doFaultTransfer:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMRs_fault
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_get_faultType
	mv	a5,a0
	lw	a3,-20(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	message_info_new
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,11
	lw	a0,-44(s0)
	call	setRegister
	lw	a2,-36(s0)
	li	a1,10
	lw	a0,-44(s0)
	call	setRegister
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	doFaultTransfer, .-doFaultTransfer
	.align	2
	.type	transferCaps, @function
transferCaps:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	add	s0,sp,112
	sw	a0,-68(s0)
	mv	s1,a1
	sw	a2,-72(s0)
	sw	a3,-76(s0)
	sw	a4,-80(s0)
	sw	a5,-84(s0)
	mv	a1,zero
	lw	a0,-68(s0)
	call	message_info_set_msgExtraCaps
	mv	a5,a0
	sw	a5,-68(s0)
	mv	a1,zero
	lw	a0,-68(s0)
	call	message_info_set_msgCapsUnwrapped
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L1450
	lw	a5,-80(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1451
.L1450:
	lw	a5,-68(s0)
	j	.L1452
.L1451:
	lw	a1,-80(s0)
	lw	a0,-76(s0)
	call	getReceiveSlots
	sw	a0,-24(s0)
	sw	zero,-20(s0)
	j	.L1453
.L1463:
	lw	a5,-20(s0)
	sll	a5,a5,2
	add	a5,s1,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	lw	a4,0(a5)
	sw	a4,-44(s0)
	lw	a5,4(a5)
	sw	a5,-40(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L1454
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-72(s0)
	bne	a4,a5,.L1454
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-80(s0)
	call	setExtraBadge
	lw	a0,-68(s0)
	call	message_info_get_msgCapsUnwrapped
	mv	a3,a0
	li	a4,1
	lw	a5,-20(s0)
	sll	a5,a4,a5
	or	a5,a3,a5
	mv	a1,a5
	lw	a0,-68(s0)
	call	message_info_set_msgCapsUnwrapped
	mv	a5,a0
	sw	a5,-68(s0)
	j	.L1455
.L1454:
	lw	a5,-24(s0)
	beqz	a5,.L1464
	lw	a5,-84(s0)
	beqz	a5,.L1458
	mv	a2,zero
	li	a1,1
	li	a0,1
	call	cap_rights_new
	mv	a5,a0
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	mv	a0,a5
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	add	a5,s0,-56
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	deriveCap
	j	.L1459
.L1458:
	add	a5,s0,-112
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-112(s0)
	sw	a5,-56(s0)
	lw	a5,-108(s0)
	sw	a5,-52(s0)
	lw	a5,-104(s0)
	sw	a5,-48(s0)
.L1459:
	lw	a5,-56(s0)
	bnez	a5,.L1465
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1466
	lw	a3,-24(s0)
	lw	a2,-28(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cteInsert
	sw	zero,-24(s0)
.L1455:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1453:
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L1462
	lw	a5,-20(s0)
	sll	a5,a5,2
	add	a5,s1,a5
	lw	a5,0(a5)
	bnez	a5,.L1463
	j	.L1462
.L1464:
	nop
	j	.L1462
.L1465:
	nop
	j	.L1462
.L1466:
	nop
.L1462:
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	message_info_set_msgExtraCaps
	mv	a5,a0
.L1452:
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	add	sp,sp,112
	jr	ra
	.size	transferCaps, .-transferCaps
	.align	2
	.globl	doPollFailedTransfer
	.type	doPollFailedTransfer, @function
doPollFailedTransfer:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,10
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	doPollFailedTransfer, .-doPollFailedTransfer
	.align	2
	.type	nextDomain, @function
nextDomain:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a5,%lo(ksDomScheduleIdx)(a5)
	add	a4,a5,1
	lui	a5,%hi(ksDomScheduleIdx)
	sw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	li	a5,1
	bltu	a4,a5,.L1469
	lui	a5,%hi(ksDomScheduleIdx)
	sw	zero,%lo(ksDomScheduleIdx)(a5)
.L1469:
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	zero,%lo(ksWorkUnitsCompleted)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(ksCurDomain)
	sw	a4,%lo(ksCurDomain)(a5)
	li	a4,1
	lui	a5,%hi(ksDomainTime)
	sw	a4,%lo(ksDomainTime)(a5)
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	nextDomain, .-nextDomain
	.align	2
	.globl	schedule
	.type	schedule, @function
schedule:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L1471
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1475
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1475:
	call	chooseThread
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
	j	.L1476
.L1471:
	lw	a5,-20(s0)
	beqz	a5,.L1476
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1474
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1474:
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	mv	a0,a5
	call	switchToThread
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
.L1476:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	schedule, .-schedule
	.section	.rodata
	.align	2
.LC238:
	.string	"thread"
	.align	2
.LC239:
	.string	"isRunnable(thread)"
	.text
	.align	2
	.globl	chooseThread
	.type	chooseThread, @function
chooseThread:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	zero,-20(s0)
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1478
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-24(s0)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-20(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-28(s0)
	lw	a0,-24(s0)
	call	l1index_to_prio
	mv	a4,a0
	lw	a5,-28(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	mv	a4,a0
	lui	a5,%hi(ksReadyQueues)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1479
	lui	a5,%hi(__FUNCTION__.5540)
	add	a3,a5,%lo(__FUNCTION__.5540)
	li	a2,338
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC238)
	add	a0,a5,%lo(.LC238)
	call	_assert_fail
.L1479:
	lw	a0,-36(s0)
	call	isRunnable
	mv	a5,a0
	bnez	a5,.L1480
	lui	a5,%hi(__FUNCTION__.5540)
	add	a3,a5,%lo(__FUNCTION__.5540)
	li	a2,339
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC239)
	add	a0,a5,%lo(.LC239)
	call	_assert_fail
.L1480:
	lw	a0,-36(s0)
	call	switchToThread
	j	.L1477
.L1478:
	call	switchToIdleThread
.L1477:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	chooseThread, .-chooseThread
	.align	2
	.globl	switchToThread
	.type	switchToThread, @function
switchToThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	Arch_switchToThread
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lui	a5,%hi(ksCurThread)
	lw	a4,-20(s0)
	sw	a4,%lo(ksCurThread)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	switchToThread, .-switchToThread
	.align	2
	.globl	switchToIdleThread
	.type	switchToIdleThread, @function
switchToIdleThread:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	call	Arch_switchToIdleThread
	lui	a5,%hi(ksIdleThread)
	lw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksCurThread)
	sw	a4,%lo(ksCurThread)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	switchToIdleThread, .-switchToIdleThread
	.align	2
	.globl	setDomain
	.type	setDomain, @function
setDomain:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,164(a5)
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1485
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
.L1485:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1487
	call	rescheduleRequired
.L1487:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setDomain, .-setDomain
	.align	2
	.globl	setPriority
	.type	setPriority, @function
setPriority:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,168(a5)
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1489
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
.L1489:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1491
	call	rescheduleRequired
.L1491:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setPriority, .-setPriority
	.align	2
	.type	possibleSwitchTo, @function
possibleSwitchTo:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,168(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a5,168(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1493
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L1494
	lw	a5,-40(s0)
	beqz	a5,.L1494
.L1493:
	lw	a5,-28(s0)
	bnez	a5,.L1494
	lui	a5,%hi(ksSchedulerAction)
	lw	a4,-36(s0)
	sw	a4,%lo(ksSchedulerAction)(a5)
	j	.L1495
.L1494:
	lw	a0,-36(s0)
	call	tcbSchedEnqueue
.L1495:
	lw	a5,-28(s0)
	beqz	a5,.L1497
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L1497
	call	rescheduleRequired
.L1497:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	possibleSwitchTo, .-possibleSwitchTo
	.align	2
	.globl	attemptSwitchTo
	.type	attemptSwitchTo, @function
attemptSwitchTo:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	possibleSwitchTo
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	attemptSwitchTo, .-attemptSwitchTo
	.align	2
	.globl	switchIfRequiredTo
	.type	switchIfRequiredTo, @function
switchIfRequiredTo:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a1,zero
	lw	a0,-20(s0)
	call	possibleSwitchTo
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	switchIfRequiredTo, .-switchIfRequiredTo
	.align	2
	.globl	setThreadState
	.type	setThreadState, @function
setThreadState:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,132
	lw	a1,-24(s0)
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a0,-20(s0)
	call	scheduleTCB
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setThreadState, .-setThreadState
	.align	2
	.globl	scheduleTCB
	.type	scheduleTCB, @function
scheduleTCB:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1503
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	bnez	a5,.L1503
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	bnez	a5,.L1503
	call	rescheduleRequired
.L1503:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	scheduleTCB, .-scheduleTCB
	.align	2
	.globl	timerTick
	.type	timerTick, @function
timerTick:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1507
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,172(a5)
	li	a5,1
	bleu	a4,a5,.L1506
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,172(a5)
	add	a4,a4,-1
	sw	a4,172(a5)
	j	.L1507
.L1506:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a4,1
	sw	a4,172(a5)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedAppend
	call	rescheduleRequired
.L1507:
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	timerTick, .-timerTick
	.align	2
	.globl	rescheduleRequired
	.type	rescheduleRequired, @function
rescheduleRequired:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	beqz	a5,.L1509
	lui	a5,%hi(ksSchedulerAction)
	lw	a4,%lo(ksSchedulerAction)(a5)
	li	a5,-1
	beq	a4,a5,.L1509
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1509:
	lui	a5,%hi(ksSchedulerAction)
	li	a4,-1
	sw	a4,%lo(ksSchedulerAction)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	rescheduleRequired, .-rescheduleRequired
	.align	2
	.type	print_string, @function
print_string:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L1511
.L1512:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	putDebugChar
	lw	a5,-36(s0)
	add	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1511:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1512
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	print_string, .-print_string
	.align	2
	.type	xdiv, @function
xdiv:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	li	a4,10
	beq	a5,a4,.L1516
	li	a4,16
	bne	a5,a4,.L1519
	lw	a5,-20(s0)
	srl	a5,a5,4
	j	.L1518
.L1516:
	lw	a4,-20(s0)
	li	a5,10
	divu	a5,a4,a5
	j	.L1518
.L1519:
	mv	a5,zero
.L1518:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	xdiv, .-xdiv
	.align	2
	.type	xmod, @function
xmod:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	li	a4,10
	beq	a5,a4,.L1522
	li	a4,16
	bne	a5,a4,.L1525
	lw	a5,-20(s0)
	and	a5,a5,15
	j	.L1524
.L1522:
	lw	a4,-20(s0)
	li	a5,10
	remu	a5,a4,a5
	j	.L1524
.L1525:
	mv	a5,zero
.L1524:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	xmod, .-xmod
	.align	2
	.globl	print_unsigned_long
	.type	print_unsigned_long, @function
print_unsigned_long:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a4,-56(s0)
	li	a5,10
	beq	a4,a5,.L1527
	lw	a4,-56(s0)
	li	a5,16
	beq	a4,a5,.L1527
	mv	a5,zero
	j	.L1536
.L1527:
	lw	a5,-52(s0)
	bnez	a5,.L1529
	li	a0,48
	call	putDebugChar
	li	a5,1
	j	.L1536
.L1529:
	sw	zero,-20(s0)
	j	.L1530
.L1533:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	xmod
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	li	a5,9
	bleu	a4,a5,.L1531
	lw	a5,-28(s0)
	and	a5,a5,0xff
	add	a5,a5,87
	and	a4,a5,0xff
	lw	a5,-20(s0)
	add	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-24(a5)
	j	.L1532
.L1531:
	lw	a5,-28(s0)
	and	a5,a5,0xff
	add	a5,a5,48
	and	a4,a5,0xff
	lw	a5,-20(s0)
	add	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-24(a5)
.L1532:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	xdiv
	sw	a0,-52(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1530:
	lw	a5,-52(s0)
	bnez	a5,.L1533
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L1534
.L1535:
	lw	a5,-24(s0)
	add	a5,a5,-1
	add	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-24(a5)
	mv	a0,a5
	call	putDebugChar
	lw	a5,-24(s0)
	add	a5,a5,-1
	sw	a5,-24(s0)
.L1534:
	lw	a5,-24(s0)
	bnez	a5,.L1535
	lw	a5,-20(s0)
.L1536:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	print_unsigned_long, .-print_unsigned_long
	.align	2
	.type	print_unsigned_long_long, @function
print_unsigned_long_long:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	li	a3,-268435456
	sw	a3,-24(s0)
	lw	a2,-44(s0)
	li	a3,16
	beq	a2,a3,.L1538
	mv	a5,zero
	j	.L1539
.L1538:
	lw	a3,-36(s0)
	srl	a4,a3,0
	mv	a5,zero
	sw	a4,-28(s0)
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1540
	lw	a1,-44(s0)
	lw	a0,-28(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	j	.L1541
.L1542:
	li	a0,48
	call	putDebugChar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	srl	a5,a5,4
	sw	a5,-24(s0)
.L1541:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	and	a5,a4,a5
	beqz	a5,.L1542
.L1540:
	lw	a1,-44(s0)
	lw	a0,-32(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-20(s0)
.L1539:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	print_unsigned_long_long, .-print_unsigned_long_long
	.section	.rodata
	.align	2
.LC240:
	.string	"(nil)"
	.align	2
.LC241:
	.string	"0x"
	.text
	.align	2
	.type	vprintf, @function
vprintf:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	bnez	a5,.L1544
	mv	a5,zero
	j	.L1545
.L1544:
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L1546
.L1564:
	lw	a5,-24(s0)
	beqz	a5,.L1547
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	li	a4,112
	beq	a5,a4,.L1549
	li	a4,112
	bgt	a5,a4,.L1550
	li	a4,100
	beq	a5,a4,.L1551
	li	a4,108
	beq	a5,a4,.L1552
	li	a4,37
	beq	a5,a4,.L1553
	j	.L1548
.L1550:
	li	a4,117
	beq	a5,a4,.L1554
	li	a4,120
	beq	a5,a4,.L1555
	li	a4,115
	beq	a5,a4,.L1556
	j	.L1548
.L1553:
	li	a0,37
	call	putDebugChar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1551:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bgez	a5,.L1558
	li	a0,45
	call	putDebugChar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	sub	a5,zero,a5
	sw	a5,-28(s0)
.L1558:
	lw	a5,-28(s0)
	li	a1,10
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1554:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	li	a1,10
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1555:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	li	a1,16
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1549:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L1559
	lui	a5,%hi(.LC240)
	add	a0,a5,%lo(.LC240)
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	j	.L1560
.L1559:
	lui	a5,%hi(.LC241)
	add	a0,a5,%lo(.LC241)
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	li	a1,16
	lw	a0,-32(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L1560:
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1556:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1557
.L1552:
	lw	a5,-52(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,108
	bne	a4,a5,.L1561
	lw	a5,-52(s0)
	add	a5,a5,2
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L1561
	lw	a5,-56(s0)
	add	a5,a5,7
	and	a5,a5,-8
	add	a4,a5,8
	sw	a4,-56(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	li	a2,16
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	print_unsigned_long_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L1561:
	lw	a5,-52(s0)
	add	a5,a5,3
	sw	a5,-52(s0)
	j	.L1557
.L1548:
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	nop
.L1557:
	sw	zero,-24(s0)
	j	.L1546
.L1547:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,37
	bne	a4,a5,.L1565
	li	a5,1
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1546
.L1565:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	putDebugChar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	nop
.L1546:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1564
	lw	a5,-20(s0)
.L1545:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	vprintf, .-vprintf
	.align	2
	.globl	printf
	.type	printf, @function
printf:
	add	sp,sp,-80
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	add	a5,s0,32
	add	a5,a5,-28
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprintf
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,80
	jr	ra
	.size	printf, .-printf
	.align	2
	.globl	puts
	.type	puts, @function
puts:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	j	.L1569
.L1570:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	putDebugChar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1569:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1570
	li	a0,10
	call	putDebugChar
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	puts, .-puts
	.align	2
	.globl	preemptionPoint
	.type	preemptionPoint, @function
preemptionPoint:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksWorkUnitsCompleted)
	lw	a5,%lo(ksWorkUnitsCompleted)(a5)
	add	a4,a5,1
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	a4,%lo(ksWorkUnitsCompleted)(a5)
	lui	a5,%hi(ksWorkUnitsCompleted)
	lw	a4,%lo(ksWorkUnitsCompleted)(a5)
	li	a5,99
	bleu	a4,a5,.L1573
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	zero,%lo(ksWorkUnitsCompleted)(a5)
	call	isIRQPending
	mv	a5,a0
	beqz	a5,.L1573
	li	a5,4
	j	.L1574
.L1573:
	mv	a5,zero
.L1574:
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	preemptionPoint, .-preemptionPoint
	.comm	ksReadyQueues,2048,4
	.comm	ksReadyQueuesL1Bitmap,4,4
	.comm	ksReadyQueuesL2Bitmap,36,4
	.comm	ksCurThread,4,4
	.comm	ksIdleThread,4,4
	.comm	ksSchedulerAction,4,4
	.comm	ksWorkUnitsCompleted,4,4
	.comm	ksRootCTE,4,4
	.comm	intStateIRQTable,16,4
	.comm	intStateIRQNode,4,4
	.comm	ksCurDomain,4,4
	.comm	ksDomainTime,4,4
	.comm	ksDomScheduleIdx,4,4
	.align	2
	.type	aep_ptr_get_queue, @function
aep_ptr_get_queue:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_tail
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	aep_ptr_get_queue, .-aep_ptr_get_queue
	.align	2
	.type	aep_ptr_set_queue, @function
aep_ptr_set_queue:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepQueue_head
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepQueue_tail
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aep_ptr_set_queue, .-aep_ptr_set_queue
	.align	2
	.type	aep_set_active, @function
aep_set_active:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a1,2
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepMsgIdentifier
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aep_set_active, .-aep_set_active
	.section	.rodata
	.align	2
.LC242:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/asyncendpoint.c"
	.align	2
.LC243:
	.string	"dest"
	.text
	.align	2
	.globl	sendAsyncIPC
	.type	sendAsyncIPC, @function
sendAsyncIPC:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1581
	li	a4,1
	bltu	a5,a4,.L1582
	li	a4,2
	beq	a5,a4,.L1583
	j	.L1591
.L1582:
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1584
	lw	a5,-20(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_tsType
	mv	a4,a0
	li	a5,3
	bne	a4,a5,.L1585
	lw	a0,-20(s0)
	call	ipcCancel
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,10
	lw	a0,-20(s0)
	call	setRegister
	lw	a0,-20(s0)
	call	attemptSwitchTo
	j	.L1580
.L1585:
	lw	a5,-20(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_tsType
	mv	a4,a0
	li	a5,7
	bne	a4,a5,.L1587
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,10
	lw	a0,-20(s0)
	call	setRegister
	mv	a2,zero
	li	a1,11
	lw	a0,-20(s0)
	call	setRegister
	lw	a0,-20(s0)
	call	Arch_leaveVMAsyncTransfer
	lw	a0,-20(s0)
	call	attemptSwitchTo
	j	.L1580
.L1587:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	aep_set_active
	j	.L1580
.L1584:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	aep_set_active
	j	.L1580
.L1581:
	lw	a0,-52(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L1589
	lui	a5,%hi(__FUNCTION__.5703)
	add	a3,a5,%lo(__FUNCTION__.5703)
	li	a2,85
	lui	a5,%hi(.LC242)
	add	a1,a5,%lo(.LC242)
	lui	a5,%hi(.LC243)
	add	a0,a5,%lo(.LC243)
	call	_assert_fail
.L1589:
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-24(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-52(s0)
	call	aep_ptr_set_queue
	lw	a5,-36(s0)
	bnez	a5,.L1590
	mv	a1,zero
	lw	a0,-52(s0)
	call	async_endpoint_ptr_set_state
.L1590:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,10
	lw	a0,-24(s0)
	call	setRegister
	lw	a0,-24(s0)
	call	switchIfRequiredTo
	nop
	j	.L1580
.L1583:
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	async_endpoint_ptr_set_aepMsgIdentifier
	nop
.L1580:
.L1591:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	sendAsyncIPC, .-sendAsyncIPC
	.align	2
	.globl	receiveAsyncIPC
	.type	receiveAsyncIPC, @function
receiveAsyncIPC:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-48(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	bleu	a5,a4,.L1594
	li	a4,2
	beq	a5,a4,.L1595
	j	.L1598
.L1594:
	lw	a5,-48(s0)
	beqz	a5,.L1596
	lw	a5,-36(s0)
	add	a5,a5,132
	li	a1,6
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-36(s0)
	add	a5,a5,132
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a0,-36(s0)
	call	scheduleTCB
	lw	a0,-20(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-36(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-20(s0)
	call	aep_ptr_set_queue
	j	.L1593
.L1596:
	lw	a0,-36(s0)
	call	doPollFailedTransfer
	nop
	j	.L1593
.L1595:
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	mv	a5,a0
	mv	a2,a5
	li	a1,10
	lw	a0,-36(s0)
	call	setRegister
	mv	a1,zero
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	nop
.L1593:
.L1598:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	receiveAsyncIPC, .-receiveAsyncIPC
	.align	2
	.globl	aepCancelAll
	.type	aepCancelAll, @function
aepCancelAll:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1603
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	sw	a5,-20(s0)
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_aepQueue_head
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_aepQueue_tail
	j	.L1601
.L1602:
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a5,-20(s0)
	lw	a5,192(a5)
	sw	a5,-20(s0)
.L1601:
	lw	a5,-20(s0)
	bnez	a5,.L1602
	call	rescheduleRequired
.L1603:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aepCancelAll, .-aepCancelAll
	.section	.rodata
	.align	2
.LC244:
	.string	"async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting"
	.text
	.align	2
	.globl	asyncIPCCancel
	.type	asyncIPCCancel, @function
asyncIPCCancel:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,1
	beq	a4,a5,.L1605
	lui	a5,%hi(__FUNCTION__.5729)
	add	a3,a5,%lo(__FUNCTION__.5729)
	li	a2,181
	lui	a5,%hi(.LC242)
	add	a1,a5,%lo(.LC242)
	lui	a5,%hi(.LC244)
	add	a0,a5,%lo(.LC244)
	call	_assert_fail
.L1605:
	lw	a0,-40(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	lw	a0,-36(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	lw	a0,-40(s0)
	call	aep_ptr_set_queue
	lw	a5,-24(s0)
	bnez	a5,.L1606
	mv	a1,zero
	lw	a0,-40(s0)
	call	async_endpoint_ptr_set_state
.L1606:
	mv	a1,zero
	lw	a0,-36(s0)
	call	setThreadState
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	asyncIPCCancel, .-asyncIPCCancel
	.section	.rodata
	.align	2
.LC245:
	.string	"tried to complete async ipc with inactive AEP"
	.text
	.align	2
	.globl	completeAsyncIPC
	.type	completeAsyncIPC, @function
completeAsyncIPC:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1608
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	add	a5,a5,-2
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1608
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_state
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	sw	a0,-20(s0)
	lw	a2,-20(s0)
	li	a1,10
	lw	a0,-40(s0)
	call	setRegister
	j	.L1609
.L1608:
	lui	a5,%hi(__func__.5735)
	add	a3,a5,%lo(__func__.5735)
	li	a2,207
	lui	a5,%hi(.LC242)
	add	a1,a5,%lo(.LC242)
	lui	a5,%hi(.LC245)
	add	a0,a5,%lo(.LC245)
	call	_fail
.L1609:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	completeAsyncIPC, .-completeAsyncIPC
	.align	2
	.globl	unbindAsyncEndpoint
	.type	unbindAsyncEndpoint, @function
unbindAsyncEndpoint:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,144(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1612
	mv	a1,zero
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepBoundTCB
	lw	a5,-36(s0)
	sw	zero,144(a5)
.L1612:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	unbindAsyncEndpoint, .-unbindAsyncEndpoint
	.align	2
	.globl	bindAsyncEndpoint
	.type	bindAsyncEndpoint, @function
bindAsyncEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	async_endpoint_ptr_set_aepBoundTCB
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,144(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	bindAsyncEndpoint, .-bindAsyncEndpoint
	.section	.rodata
	.align	2
.LC246:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/cnode.c"
	.align	2
.LC247:
	.string	"cap_get_capType(cap) == cap_cnode_cap"
	.align	2
.LC248:
	.string	"CNodeCap: Illegal Operation attempted."
	.align	2
.LC249:
	.string	"CNode operation: Truncated message."
	.align	2
.LC250:
	.string	"CNode operation: Target slot invalid."
	.align	2
.LC251:
	.string	"CNode Copy/Mint/Move/Mutate: Truncated message."
	.align	2
.LC252:
	.string	"CNode Copy/Mint/Move/Mutate: Destination not empty."
	.align	2
.LC253:
	.string	"CNode Copy/Mint/Move/Mutate: Invalid source slot."
	.align	2
.LC254:
	.string	"CNode Copy/Mint/Move/Mutate: Source slot invalid or empty."
	.align	2
.LC255:
	.string	"Truncated message for CNode Copy operation."
	.align	2
.LC256:
	.string	"Error deriving cap for CNode Copy operation."
	.align	2
.LC257:
	.string	"CNode Mint: Truncated message."
	.align	2
.LC258:
	.string	"Error deriving cap for CNode Mint operation."
	.align	2
.LC259:
	.string	"CNode Mutate: Truncated message."
	.align	2
.LC260:
	.string	"0"
	.align	2
.LC261:
	.string	"CNode Copy/Mint/Move/Mutate: Mutated cap would be invalid."
	.align	2
.LC262:
	.string	"CNode SaveCaller: Destination slot not empty."
	.align	2
.LC263:
	.string	"CNode Recycle: Target cap invalid."
	.align	2
.LC264:
	.string	"CNode Rotate: Pivot slot the same as source or dest slot."
	.align	2
.LC265:
	.string	"CNode Rotate: Source cap invalid."
	.align	2
.LC266:
	.string	"CNode Rotate: Pivot cap invalid."
	.text
	.align	2
	.globl	decodeCNodeInvocation
	.type	decodeCNodeInvocation, @function
decodeCNodeInvocation:
	add	sp,sp,-224
	sw	ra,220(sp)
	sw	s0,216(sp)
	sw	s1,212(sp)
	add	s0,sp,224
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-192(s0)
	sw	a3,-188(s0)
	mv	s1,a4
	sw	a5,-196(s0)
	lw	a0,-192(s0)
	lw	a1,-188(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L1615
	lui	a5,%hi(__FUNCTION__.5770)
	add	a3,a5,%lo(__FUNCTION__.5770)
	li	a2,51
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC247)
	add	a0,a5,%lo(.LC247)
	call	_assert_fail
.L1615:
	lw	a4,-180(s0)
	li	a5,13
	bleu	a4,a5,.L1616
	lw	a4,-180(s0)
	li	a5,22
	bleu	a4,a5,.L1617
.L1616:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,54
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC248)
	add	a0,a5,%lo(.LC248)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1617:
	lw	a4,-184(s0)
	li	a5,1
	bgtu	a4,a5,.L1619
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,60
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC249)
	add	a0,a5,%lo(.LC249)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1619:
	lw	a1,-196(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-196(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-192(s0)
	lw	a1,-188(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1620
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,69
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC250)
	add	a0,a5,%lo(.LC250)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-100(s0)
	j	.L1661
.L1620:
	lw	a5,-96(s0)
	sw	a5,-32(s0)
	lw	a4,-180(s0)
	li	a5,16
	bleu	a4,a5,.L1621
	lw	a4,-180(s0)
	li	a5,20
	bgtu	a4,a5,.L1621
	lw	a4,-184(s0)
	li	a5,3
	bleu	a4,a5,.L1622
	lw	a5,0(s1)
	bnez	a5,.L1623
.L1622:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,84
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC251)
	add	a0,a5,%lo(.LC251)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1623:
	lw	a1,-196(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-196(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-112(s0)
	lw	a5,4(a5)
	sw	a5,-108(s0)
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1625
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,95
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC252)
	add	a0,a5,%lo(.LC252)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-44(s0)
	j	.L1661
.L1625:
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-112(s0)
	lw	a1,-108(s0)
	call	lookupSourceSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1626
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,101
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC253)
	add	a0,a5,%lo(.LC253)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-100(s0)
	j	.L1661
.L1626:
	lw	a5,-96(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1627
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,107
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC254)
	add	a0,a5,%lo(.LC254)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,20(a5)
	lw	a0,-40(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1661
.L1627:
	lw	a5,-180(s0)
	li	a4,18
	beq	a5,a4,.L1629
	li	a4,18
	bgtu	a5,a4,.L1630
	li	a4,17
	beq	a5,a4,.L1631
	j	.L1628
.L1630:
	li	a4,19
	beq	a5,a4,.L1632
	li	a4,20
	beq	a5,a4,.L1633
	j	.L1628
.L1631:
	lw	a4,-184(s0)
	li	a5,4
	bgtu	a4,a5,.L1634
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,119
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC255)
	add	a0,a5,%lo(.LC255)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1634:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	rightsFromWord
	mv	a5,a0
	sw	a5,-104(s0)
	lw	a5,-48(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-104(s0)
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-140(s0)
	sw	a5,-136(s0)
	add	a5,s0,-132
	lw	a2,-140(s0)
	lw	a3,-136(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-132(s0)
	beqz	a5,.L1635
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,128
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC256)
	add	a0,a5,%lo(.LC256)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-132(s0)
	j	.L1661
.L1635:
	lw	a5,-128(s0)
	sw	a5,-120(s0)
	lw	a5,-124(s0)
	sw	a5,-116(s0)
	sw	zero,-20(s0)
	j	.L1636
.L1629:
	lw	a4,-184(s0)
	li	a5,5
	bgtu	a4,a5,.L1637
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,138
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC257)
	add	a0,a5,%lo(.LC257)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1637:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	rightsFromWord
	mv	a5,a0
	sw	a5,-104(s0)
	lw	a1,-196(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-104(s0)
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-140(s0)
	sw	a5,-136(s0)
	lw	a2,-140(s0)
	lw	a3,-136(s0)
	lw	a1,-52(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-92(s0)
	sw	a5,-88(s0)
	add	a5,s0,-224
	lw	a2,-92(s0)
	lw	a3,-88(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-224(s0)
	sw	a5,-132(s0)
	lw	a5,-220(s0)
	sw	a5,-128(s0)
	lw	a5,-216(s0)
	sw	a5,-124(s0)
	lw	a5,-132(s0)
	beqz	a5,.L1638
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,149
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC258)
	add	a0,a5,%lo(.LC258)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-132(s0)
	j	.L1661
.L1638:
	lw	a5,-128(s0)
	sw	a5,-120(s0)
	lw	a5,-124(s0)
	sw	a5,-116(s0)
	sw	zero,-20(s0)
	j	.L1636
.L1632:
	lw	a5,-48(s0)
	lw	a4,0(a5)
	sw	a4,-120(s0)
	lw	a5,4(a5)
	sw	a5,-116(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L1636
.L1633:
	lw	a4,-184(s0)
	li	a5,4
	bgtu	a4,a5,.L1639
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,165
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC259)
	add	a0,a5,%lo(.LC259)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1639:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-52(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L1636
.L1628:
	lui	a5,%hi(__FUNCTION__.5770)
	add	a3,a5,%lo(__FUNCTION__.5770)
	li	a2,177
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC260)
	add	a0,a5,%lo(.LC260)
	call	_assert_fail
.L1636:
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1640
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,182
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC261)
	add	a0,a5,%lo(.LC261)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1640:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-20(s0)
	beqz	a5,.L1641
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	invokeCNodeMove
	mv	a5,a0
	j	.L1661
.L1641:
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	invokeCNodeInsert
	mv	a5,a0
	j	.L1661
.L1621:
	lw	a4,-180(s0)
	li	a5,14
	bne	a4,a5,.L1642
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeRevoke
	mv	a5,a0
	j	.L1661
.L1642:
	lw	a4,-180(s0)
	li	a5,15
	bne	a4,a5,.L1643
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeDelete
	mv	a5,a0
	j	.L1661
.L1643:
	lw	a4,-180(s0)
	li	a5,22
	bne	a4,a5,.L1644
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1645
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,208
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC262)
	add	a0,a5,%lo(.LC262)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-44(s0)
	j	.L1661
.L1645:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeSaveCaller
	mv	a5,a0
	j	.L1661
.L1644:
	lw	a4,-180(s0)
	li	a5,16
	bne	a4,a5,.L1646
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	hasRecycleRights
	mv	a5,a0
	bnez	a5,.L1647
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,218
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC263)
	add	a0,a5,%lo(.LC263)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1647:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeRecycle
	mv	a5,a0
	j	.L1661
.L1646:
	lw	a4,-180(s0)
	li	a5,21
	bne	a4,a5,.L1648
	lw	a4,-184(s0)
	li	a5,7
	bleu	a4,a5,.L1649
	lw	a5,0(s1)
	beqz	a5,.L1649
	lw	a5,4(s1)
	bnez	a5,.L1650
.L1649:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1650:
	lw	a1,-196(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-56(s0)
	lw	a1,-196(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-60(s0)
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-64(s0)
	lw	a1,-196(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-68(s0)
	lw	a1,-196(s0)
	li	a0,6
	call	getSyscallArg
	sw	a0,-72(s0)
	lw	a1,-196(s0)
	li	a0,7
	call	getSyscallArg
	sw	a0,-76(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-148(s0)
	lw	a5,4(a5)
	sw	a5,-144(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-156(s0)
	lw	a5,4(a5)
	sw	a5,-152(s0)
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	lw	a0,-156(s0)
	lw	a1,-152(s0)
	call	lookupSourceSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1652
	lw	a5,-100(s0)
	j	.L1661
.L1652:
	lw	a5,-96(s0)
	sw	a5,-80(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	lookupPivotSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1653
	lw	a5,-100(s0)
	j	.L1661
.L1653:
	lw	a5,-96(s0)
	sw	a5,-84(s0)
	lw	a4,-84(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L1654
	lw	a4,-84(s0)
	lw	a5,-32(s0)
	bne	a4,a5,.L1655
.L1654:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,260
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC264)
	add	a0,a5,%lo(.LC264)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1655:
	lw	a4,-80(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L1656
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1656
	lw	a5,-44(s0)
	j	.L1661
.L1656:
	lw	a5,-80(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1657
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,20(a5)
	lw	a0,-76(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1661
.L1657:
	lw	a5,-84(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1658
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,20(a5)
	lw	a0,-64(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1661
.L1658:
	lw	a5,-80(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-68(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-164(s0)
	sw	a5,-160(s0)
	lw	a5,-84(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-56(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-172(s0)
	sw	a5,-168(s0)
	lw	a0,-164(s0)
	lw	a1,-160(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1659
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,290
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC265)
	add	a0,a5,%lo(.LC265)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1659:
	lw	a0,-172(s0)
	lw	a1,-168(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1660
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,296
	lui	a5,%hi(__func__.5771)
	add	a1,a5,%lo(__func__.5771)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC266)
	add	a0,a5,%lo(.LC266)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1661
.L1660:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a6,-32(s0)
	lw	a5,-84(s0)
	lw	a4,-80(s0)
	lw	a2,-172(s0)
	lw	a3,-168(s0)
	lw	a0,-164(s0)
	lw	a1,-160(s0)
	call	invokeCNodeRotate
	mv	a5,a0
	j	.L1661
.L1648:
	mv	a5,zero
.L1661:
	mv	a0,a5
	lw	ra,220(sp)
	lw	s0,216(sp)
	lw	s1,212(sp)
	add	sp,sp,224
	jr	ra
	.size	decodeCNodeInvocation, .-decodeCNodeInvocation
	.align	2
	.globl	invokeCNodeRevoke
	.type	invokeCNodeRevoke, @function
invokeCNodeRevoke:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	cteRevoke
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeRevoke, .-invokeCNodeRevoke
	.align	2
	.globl	invokeCNodeDelete
	.type	invokeCNodeDelete, @function
invokeCNodeDelete:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeDelete, .-invokeCNodeDelete
	.align	2
	.globl	invokeCNodeRecycle
	.type	invokeCNodeRecycle, @function
invokeCNodeRecycle:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	cteRecycle
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeRecycle, .-invokeCNodeRecycle
	.align	2
	.globl	invokeCNodeInsert
	.type	invokeCNodeInsert, @function
invokeCNodeInsert:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteInsert
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeInsert, .-invokeCNodeInsert
	.align	2
	.globl	invokeCNodeMove
	.type	invokeCNodeMove, @function
invokeCNodeMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteMove
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeMove, .-invokeCNodeMove
	.align	2
	.globl	invokeCNodeRotate
	.type	invokeCNodeRotate, @function
invokeCNodeRotate:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	bne	a4,a5,.L1673
	lw	a5,-40(s0)
	lw	a3,-32(s0)
	lw	a4,-28(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cdtSwap
	j	.L1674
.L1673:
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cteMove
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteMove
.L1674:
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeCNodeRotate, .-invokeCNodeRotate
	.section	.rodata
	.align	2
.LC267:
	.string	"CNode SaveCaller: Reply cap not present."
	.align	2
.LC268:
	.string	"caller capability must be null or reply"
	.text
	.align	2
	.globl	invokeCNodeSaveCaller
	.type	invokeCNodeSaveCaller, @function
invokeCNodeSaveCaller:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1678
	li	a4,8
	beq	a5,a4,.L1679
	j	.L1682
.L1678:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,368
	lui	a5,%hi(__func__.5832)
	add	a1,a5,%lo(__func__.5832)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC267)
	add	a0,a5,%lo(.LC267)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	j	.L1680
.L1679:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	li	a1,1
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a1,-28(s0)
	mv	a0,zero
	call	cdtInsert
	add	a5,s0,-36
	li	a1,1
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	cdtInsert
	j	.L1680
.L1682:
	lui	a5,%hi(__func__.5832)
	add	a3,a5,%lo(__func__.5832)
	li	a2,390
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC268)
	add	a0,a5,%lo(.LC268)
	call	_fail
.L1680:
	mv	a5,zero
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	invokeCNodeSaveCaller, .-invokeCNodeSaveCaller
	.section	.rodata
	.align	2
.LC269:
	.string	"cap_get_capType(destSlot->cap) == cap_null_cap"
	.text
	.align	2
	.globl	cteInsert
	.type	cteInsert, @function
cteInsert:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1684
	lui	a5,%hi(__FUNCTION__.5843)
	add	a3,a5,%lo(__FUNCTION__.5843)
	li	a2,401
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC269)
	add	a0,a5,%lo(.LC269)
	call	_assert_fail
.L1684:
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cteInsert, .-cteInsert
	.align	2
	.globl	cteMove
	.type	cteMove, @function
cteMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1686
	lui	a5,%hi(__FUNCTION__.5849)
	add	a3,a5,%lo(__FUNCTION__.5849)
	li	a2,411
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC269)
	add	a0,a5,%lo(.LC269)
	call	_assert_fail
.L1686:
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	cdtMove
	lw	s1,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cteMove, .-cteMove
	.align	2
	.globl	capSwapForDelete
	.type	capSwapForDelete, @function
capSwapForDelete:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L1690
	lw	a5,-36(s0)
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	lw	a3,-32(s0)
	lw	a4,-28(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cdtSwap
	j	.L1687
.L1690:
	nop
.L1687:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	capSwapForDelete, .-capSwapForDelete
	.align	2
	.globl	cteRevoke
	.type	cteRevoke, @function
cteRevoke:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1692
	mv	a5,zero
	j	.L1693
.L1692:
	lw	a0,-36(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
	j	.L1694
.L1697:
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1695
	lw	a5,-24(s0)
	j	.L1693
.L1695:
	call	preemptionPoint
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1696
	lw	a5,-24(s0)
	j	.L1693
.L1696:
	lw	a0,-36(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
.L1694:
	lw	a5,-20(s0)
	bnez	a5,.L1697
	mv	a5,zero
.L1693:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteRevoke, .-cteRevoke
	.align	2
	.globl	cteDelete
	.type	cteDelete, @function
cteDelete:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	add	a5,s0,-28
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	finaliseSlot
	lw	a5,-28(s0)
	beqz	a5,.L1699
	lw	a5,-28(s0)
	j	.L1703
.L1699:
	lw	a5,-40(s0)
	bnez	a5,.L1701
	lw	a5,-24(s0)
	beqz	a5,.L1702
.L1701:
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	emptySlot
.L1702:
	mv	a5,zero
.L1703:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteDelete, .-cteDelete
	.align	2
	.type	emptySlot, @function
emptySlot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1706
	lw	a0,-20(s0)
	call	cdtRemove
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L1706
	lw	a0,-24(s0)
	call	deletedIRQHandler
.L1706:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	emptySlot, .-emptySlot
	.section	.rodata
	.align	2
.LC270:
	.string	"finaliseCap should only return Zombie or NullCap"
	.text
	.align	2
	.type	capRemovable, @function
capRemovable:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1709
	li	a4,46
	beq	a5,a4,.L1710
	j	.L1715
.L1709:
	li	a5,1
	j	.L1711
.L1710:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieNumber
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1712
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L1713
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L1713
.L1712:
	li	a5,1
	j	.L1714
.L1713:
	mv	a5,zero
.L1714:
	j	.L1711
.L1715:
	lui	a5,%hi(__func__.5882)
	add	a3,a5,%lo(__func__.5882)
	li	a2,498
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC270)
	add	a0,a5,%lo(.LC270)
	call	_fail
.L1711:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	capRemovable, .-capRemovable
	.align	2
	.type	capCyclicZombie, @function
capCyclicZombie:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	bne	a4,a5,.L1717
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-28(s0)
	bne	a4,a5,.L1717
	li	a5,1
	j	.L1718
.L1717:
	mv	a5,zero
.L1718:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	capCyclicZombie, .-capCyclicZombie
	.align	2
	.type	finaliseSlot, @function
finaliseSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	j	.L1721
.L1730:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1722
	lw	a0,-56(s0)
	call	cdtIsFinal
	mv	a5,a0
	beqz	a5,.L1723
.L1722:
	li	a5,1
	j	.L1724
.L1723:
	mv	a5,zero
.L1724:
	sw	a5,-20(s0)
	add	a0,s0,-36
	lw	a5,-56(s0)
	mv	a4,zero
	lw	a3,-20(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	call	finaliseCap
	lw	a2,-56(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	capRemovable
	mv	a5,a0
	beqz	a5,.L1725
	sw	zero,-48(s0)
	li	a5,1
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1720
.L1725:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1727
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-56(s0)
	call	cdtUpdate
.L1727:
	lw	a5,-60(s0)
	bnez	a5,.L1728
	lw	a2,-56(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	capCyclicZombie
	mv	a5,a0
	beqz	a5,.L1728
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1720
.L1728:
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	reduceZombie
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1729
	lw	a5,-24(s0)
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	li	a5,3
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1720
.L1729:
	call	preemptionPoint
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1721
	lw	a5,-24(s0)
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	li	a5,3
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1720
.L1721:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1730
	sw	zero,-48(s0)
	li	a5,1
	sw	a5,-44(s0)
	li	a5,3
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L1720:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	finaliseSlot, .-finaliseSlot
	.section	.rodata
	.align	2
.LC271:
	.string	"cap_get_capType(slot->cap) == cap_zombie_cap"
	.align	2
.LC272:
	.string	"n > 0"
	.align	2
.LC273:
	.string	"cap_get_capType(endSlot->cap) == cap_null_cap"
	.align	2
.LC274:
	.string	"ptr2 == slot && ptr != slot"
	.align	2
.LC275:
	.string	"Expected recursion to result in Zombie."
	.align	2
.LC276:
	.string	"ptr != slot"
	.align	2
.LC277:
	.string	"ptr != CTE_PTR(cap_zombie_cap_get_capZombiePtr(ptr->cap))"
	.text
	.align	2
	.type	reduceZombie, @function
reduceZombie:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1733
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,572
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC271)
	add	a0,a5,%lo(.LC271)
	call	_assert_fail
.L1733:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieNumber
	sw	a0,-24(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-28(s0)
	lw	a5,-24(s0)
	bnez	a5,.L1734
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,578
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC272)
	add	a0,a5,%lo(.LC272)
	call	_assert_fail
.L1734:
	lw	a5,-56(s0)
	beqz	a5,.L1735
	lw	a4,-24(s0)
	li	a5,268435456
	add	a5,a5,-1
	add	a5,a4,a5
	sll	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	mv	a1,zero
	lw	a0,-32(s0)
	call	cteDelete
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	beqz	a5,.L1736
	lw	a5,-36(s0)
	j	.L1737
.L1736:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1750
	li	a4,46
	bne	a5,a4,.L1749
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L1742
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieNumber
	mv	a4,a0
	lw	a5,-24(s0)
	bne	a4,a5,.L1742
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieType
	mv	a4,a0
	lw	a5,-28(s0)
	bne	a4,a5,.L1742
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1743
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,599
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC273)
	add	a0,a5,%lo(.LC273)
	call	_assert_fail
.L1743:
	lw	a5,-24(s0)
	add	a4,a5,-1
	lw	s1,-52(s0)
	lw	a5,-52(s0)
	mv	a2,a4
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_set_capZombieNumber
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L1751
.L1742:
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1745
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1751
.L1745:
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,610
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC274)
	add	a0,a5,%lo(.LC274)
	call	_assert_fail
.L1749:
	lui	a5,%hi(__func__.5913)
	add	a3,a5,%lo(__func__.5913)
	li	a2,616
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC275)
	add	a0,a5,%lo(.LC275)
	call	_fail
.L1735:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1747
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,620
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC276)
	add	a0,a5,%lo(.LC276)
	call	_assert_fail
.L1747:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	bne	a4,a5,.L1748
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	bne	a4,a5,.L1748
	lui	a5,%hi(__FUNCTION__.5906)
	add	a3,a5,%lo(__FUNCTION__.5906)
	li	a2,624
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC277)
	add	a0,a5,%lo(.LC277)
	call	_assert_fail
.L1748:
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	capSwapForDelete
	j	.L1746
.L1750:
	nop
	j	.L1746
.L1751:
	nop
.L1746:
	mv	a5,zero
.L1737:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	reduceZombie, .-reduceZombie
	.section	.rodata
	.align	2
.LC278:
	.string	"capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid"
	.text
	.align	2
	.globl	cteDeleteOne
	.type	cteDeleteOne, @function
cteDeleteOne:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1756
	lw	a0,-36(s0)
	call	cdtIsFinal
	sw	a0,-20(s0)
	add	a0,s0,-32
	lw	a5,-36(s0)
	li	a4,1
	lw	a3,-20(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	call	finaliseCap
	lw	a2,-36(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	capRemovable
	mv	a5,a0
	beqz	a5,.L1754
	lw	a4,-24(s0)
	li	a5,3
	beq	a4,a5,.L1755
.L1754:
	lui	a5,%hi(__FUNCTION__.5919)
	add	a3,a5,%lo(__FUNCTION__.5919)
	li	a2,642
	lui	a5,%hi(.LC246)
	add	a1,a5,%lo(.LC246)
	lui	a5,%hi(.LC278)
	add	a0,a5,%lo(.LC278)
	call	_assert_fail
.L1755:
	li	a1,3
	lw	a0,-36(s0)
	call	emptySlot
.L1756:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteDeleteOne, .-cteDeleteOne
	.align	2
	.globl	cteRecycle
	.type	cteRecycle, @function
cteRecycle:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a0,-52(s0)
	call	cteRevoke
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1758
	lw	a5,-20(s0)
	j	.L1762
.L1758:
	add	a5,s0,-36
	li	a2,1
	lw	a1,-52(s0)
	mv	a0,a5
	call	finaliseSlot
	lw	a5,-36(s0)
	beqz	a5,.L1760
	lw	a5,-36(s0)
	j	.L1762
.L1760:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1761
	lw	a0,-52(s0)
	call	cdtIsFinal
	sw	a0,-24(s0)
	lw	a5,-52(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-24(s0)
	call	recycleCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-52(s0)
	call	cdtUpdate
.L1761:
	mv	a5,zero
.L1762:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cteRecycle, .-cteRecycle
	.align	2
	.globl	insertNewCap
	.type	insertNewCap, @function
insertNewCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	insertNewCap, .-insertNewCap
	.align	2
	.globl	setupReplyMaster
	.type	setupReplyMaster, @function
setupReplyMaster:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1766
	lw	s1,-20(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L1766:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	setupReplyMaster, .-setupReplyMaster
	.align	2
	.globl	ensureEmptySlot
	.type	ensureEmptySlot, @function
ensureEmptySlot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1768
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,8
	sw	a4,24(a5)
	li	a5,3
	j	.L1769
.L1768:
	mv	a5,zero
.L1769:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ensureEmptySlot, .-ensureEmptySlot
	.align	2
	.globl	slotCapLongRunningDelete
	.type	slotCapLongRunningDelete, @function
slotCapLongRunningDelete:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1771
	mv	a5,zero
	j	.L1772
.L1771:
	lw	a0,-20(s0)
	call	cdtIsFinal
	mv	a5,a0
	bnez	a5,.L1773
	mv	a5,zero
	j	.L1772
.L1773:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	beq	a5,a4,.L1775
	li	a4,46
	beq	a5,a4,.L1775
	li	a4,10
	bne	a5,a4,.L1776
.L1775:
	li	a5,1
	j	.L1772
.L1776:
	mv	a5,zero
.L1772:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	slotCapLongRunningDelete, .-slotCapLongRunningDelete
	.align	2
	.globl	getReceiveSlots
	.type	getReceiveSlots, @function
getReceiveSlots:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lw	a5,-72(s0)
	bnez	a5,.L1778
	mv	a5,zero
	j	.L1783
.L1778:
	add	a5,s0,-36
	lw	a1,-72(s0)
	mv	a0,a5
	call	loadCapTransfer
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	add	a5,s0,-48
	lw	a2,-20(s0)
	lw	a1,-68(s0)
	mv	a0,a5
	call	lookupCap
	lw	a5,-48(s0)
	beqz	a5,.L1780
	mv	a5,zero
	j	.L1783
.L1780:
	lw	a5,-44(s0)
	sw	a5,-64(s0)
	lw	a5,-40(s0)
	sw	a5,-60(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	beqz	a5,.L1781
	mv	a5,zero
	j	.L1783
.L1781:
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1782
	mv	a5,zero
	j	.L1783
.L1782:
	lw	a5,-24(s0)
.L1783:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	getReceiveSlots, .-getReceiveSlots
	.align	2
	.globl	loadCapTransfer
	.type	loadCapTransfer, @function
loadCapTransfer:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	li	a5,125
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,2
	lw	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	capTransferFromWords
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	loadCapTransfer, .-loadCapTransfer
	.align	2
	.type	ep_ptr_get_queue, @function
ep_ptr_get_queue:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_head
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_tail
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	ep_ptr_get_queue, .-ep_ptr_get_queue
	.align	2
	.type	ep_ptr_set_queue, @function
ep_ptr_set_queue:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	endpoint_ptr_set_epQueue_head
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	endpoint_ptr_set_epQueue_tail
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ep_ptr_set_queue, .-ep_ptr_set_queue
	.section	.rodata
	.align	2
.LC279:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/endpoint.c"
	.text
	.align	2
	.globl	sendIPC
	.type	sendIPC, @function
sendIPC:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	lw	a0,-72(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	bleu	a5,a4,.L1791
	li	a4,2
	beq	a5,a4,.L1792
	j	.L1801
.L1791:
	lw	a5,-52(s0)
	beqz	a5,.L1799
	lw	a5,-68(s0)
	add	a5,a5,132
	li	a1,4
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a4,-72(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a1,-60(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCBadge
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a1,-64(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCCanGrant
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a1,-56(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCIsCall
	lw	a0,-68(s0)
	call	scheduleTCB
	lw	a0,-72(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-68(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a1,1
	lw	a0,-72(s0)
	call	endpoint_ptr_set_state
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-72(s0)
	call	ep_ptr_set_queue
	j	.L1799
.L1792:
	lw	a0,-72(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1794
	lui	a5,%hi(__FUNCTION__.5984)
	add	a3,a5,%lo(__FUNCTION__.5984)
	li	a2,81
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC243)
	add	a0,a5,%lo(.LC243)
	call	_assert_fail
.L1794:
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-20(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-72(s0)
	call	ep_ptr_set_queue
	lw	a5,-40(s0)
	bnez	a5,.L1795
	mv	a1,zero
	lw	a0,-72(s0)
	call	endpoint_ptr_set_state
.L1795:
	lw	a5,-20(s0)
	lw	a4,132(a5)
	sw	a4,-96(s0)
	lw	a4,136(a5)
	sw	a4,-92(s0)
	lw	a5,140(a5)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a0,a5
	call	thread_state_get_blockingIPCDiminishCaps
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	doIPCTransfer
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	attemptSwitchTo
	lw	a5,-56(s0)
	bnez	a5,.L1796
	lw	a5,-68(s0)
	add	a5,a5,148
	mv	a0,a5
	call	fault_ptr_get_faultType
	mv	a5,a0
	beqz	a5,.L1800
.L1796:
	lw	a5,-64(s0)
	beqz	a5,.L1798
	lw	a5,-24(s0)
	bnez	a5,.L1798
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	setupCallerCap
	j	.L1797
.L1798:
	mv	a1,zero
	lw	a0,-68(s0)
	call	setThreadState
.L1797:
	nop
	j	.L1800
.L1799:
	nop
	j	.L1801
.L1800:
	nop
.L1801:
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	add	sp,sp,96
	jr	ra
	.size	sendIPC, .-sendIPC
	.section	.rodata
	.align	2
.LC280:
	.string	"cap_get_capType(cap) == cap_endpoint_cap"
	.align	2
.LC281:
	.string	"sender"
	.text
	.align	2
	.globl	receiveIPC
	.type	receiveIPC, @function
receiveIPC:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	beq	a4,a5,.L1803
	lui	a5,%hi(__FUNCTION__.5992)
	add	a3,a5,%lo(__FUNCTION__.5992)
	li	a2,121
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC280)
	add	a0,a5,%lo(.LC280)
	call	_assert_fail
.L1803:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	sw	a5,-24(s0)
	lw	a5,-68(s0)
	lw	a5,144(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1804
	lw	a0,-28(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,2
	bne	a4,a5,.L1804
	lw	a1,-68(s0)
	lw	a0,-28(s0)
	call	completeAsyncIPC
	j	.L1805
.L1804:
	lw	a0,-20(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1806
	li	a4,1
	bltu	a5,a4,.L1807
	li	a4,2
	beq	a5,a4,.L1807
	j	.L1815
.L1807:
	lw	a5,-68(s0)
	add	a5,a5,132
	li	a1,3
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a5,-68(s0)
	add	a5,a5,132
	lw	a1,-24(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCDiminishCaps
	lw	a0,-68(s0)
	call	scheduleTCB
	lw	a0,-20(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-68(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	li	a1,2
	lw	a0,-20(s0)
	call	endpoint_ptr_set_state
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-20(s0)
	call	ep_ptr_set_queue
	nop
	j	.L1805
.L1806:
	lw	a0,-20(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L1808
	lui	a5,%hi(__FUNCTION__.5992)
	add	a3,a5,%lo(__FUNCTION__.5992)
	li	a2,166
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC281)
	add	a0,a5,%lo(.LC281)
	call	_assert_fail
.L1808:
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-32(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-20(s0)
	call	ep_ptr_set_queue
	lw	a5,-60(s0)
	bnez	a5,.L1809
	mv	a1,zero
	lw	a0,-20(s0)
	call	endpoint_ptr_set_state
.L1809:
	lw	a5,-32(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCBadge
	sw	a0,-36(s0)
	lw	a5,-32(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCCanGrant
	sw	a0,-40(s0)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	doIPCTransfer
	lw	a5,-32(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCIsCall
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L1810
	lw	a5,-32(s0)
	lw	a0,148(a5)
	lw	a1,152(a5)
	call	fault_get_faultType
	mv	a5,a0
	beqz	a5,.L1811
.L1810:
	lw	a5,-40(s0)
	beqz	a5,.L1812
	lw	a5,-24(s0)
	bnez	a5,.L1812
	lw	a1,-68(s0)
	lw	a0,-32(s0)
	call	setupCallerCap
	j	.L1814
.L1812:
	mv	a1,zero
	lw	a0,-32(s0)
	call	setThreadState
	j	.L1814
.L1811:
	li	a1,1
	lw	a0,-32(s0)
	call	setThreadState
	lw	a0,-32(s0)
	call	switchIfRequiredTo
.L1814:
	nop
.L1805:
.L1815:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	receiveIPC, .-receiveIPC
	.align	2
	.globl	replyFromKernel_error
	.type	replyFromKernel_error, @function
replyFromKernel_error:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a1,-36(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,10
	lw	a0,-36(s0)
	call	setRegister
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	setMRs_syscall_error
	sw	a0,-24(s0)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,24(a5)
	lw	a3,-24(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,11
	lw	a0,-36(s0)
	call	setRegister
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	replyFromKernel_error, .-replyFromKernel_error
	.align	2
	.globl	replyFromKernel_success_empty
	.type	replyFromKernel_success_empty, @function
replyFromKernel_success_empty:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,10
	lw	a0,-20(s0)
	call	setRegister
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,11
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	replyFromKernel_success_empty, .-replyFromKernel_success_empty
	.section	.rodata
	.align	2
.LC282:
	.string	"endpoint_ptr_get_state(epptr) != EPState_Idle"
	.align	2
.LC283:
	.string	"cap_get_capType(slot->cap) == cap_reply_cap"
	.align	2
.LC284:
	.string	"callerTCB || !cap_reply_cap_get_capInCDT(slot->cap)"
	.align	2
.LC285:
	.string	"callerTCB == tptr"
	.align	2
.LC286:
	.string	"TCB_PTR(cap_reply_cap_get_capTCBPtr(callerCap->cap)) == tptr"
	.text
	.align	2
	.globl	ipcCancel
	.type	ipcCancel, @function
ipcCancel:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	add	a5,a5,132
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	thread_state_ptr_get_tsType
	mv	a5,a0
	li	a4,5
	beq	a5,a4,.L1820
	li	a4,5
	bgtu	a5,a4,.L1821
	li	a4,3
	bltu	a5,a4,.L1834
	j	.L1833
.L1821:
	li	a4,6
	beq	a5,a4,.L1823
	j	.L1834
.L1833:
	lw	a0,-24(s0)
	call	thread_state_ptr_get_blockingIPCEndpoint
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-28(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	bnez	a5,.L1824
	lui	a5,%hi(__FUNCTION__.6019)
	add	a3,a5,%lo(__FUNCTION__.6019)
	li	a2,241
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC282)
	add	a0,a5,%lo(.LC282)
	call	_assert_fail
.L1824:
	lw	a0,-28(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-52(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-28(s0)
	call	ep_ptr_set_queue
	lw	a5,-44(s0)
	bnez	a5,.L1825
	mv	a1,zero
	lw	a0,-28(s0)
	call	endpoint_ptr_set_state
.L1825:
	mv	a1,zero
	lw	a0,-52(s0)
	call	setThreadState
	nop
	j	.L1819
.L1823:
	lw	a0,-24(s0)
	call	thread_state_ptr_get_blockingIPCEndpoint
	mv	a5,a0
	mv	a1,a5
	lw	a0,-52(s0)
	call	asyncIPCCancel
	j	.L1819
.L1820:
	lw	a5,-52(s0)
	add	a5,a5,148
	mv	a0,a5
	call	fault_null_fault_ptr_new
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1826
	lui	a5,%hi(__FUNCTION__.6019)
	add	a3,a5,%lo(__FUNCTION__.6019)
	li	a2,269
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC283)
	add	a0,a5,%lo(.LC283)
	call	_assert_fail
.L1826:
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1827
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1827
	lui	a5,%hi(__FUNCTION__.6019)
	add	a3,a5,%lo(__FUNCTION__.6019)
	li	a2,272
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC284)
	add	a0,a5,%lo(.LC284)
	call	_assert_fail
.L1827:
	lw	a5,-36(s0)
	beqz	a5,.L1835
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1829
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	beq	a4,a5,.L1830
	lui	a5,%hi(__FUNCTION__.6019)
	add	a3,a5,%lo(__FUNCTION__.6019)
	li	a2,277
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC285)
	add	a0,a5,%lo(.LC285)
	call	_assert_fail
.L1830:
	lw	a0,-32(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1831
	lw	a0,-20(s0)
	call	cdtRemove
.L1831:
	lw	a0,-32(s0)
	call	cdtRemove
	j	.L1832
.L1829:
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	beq	a4,a5,.L1832
	lui	a5,%hi(__FUNCTION__.6019)
	add	a3,a5,%lo(__FUNCTION__.6019)
	li	a2,286
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC286)
	add	a0,a5,%lo(.LC286)
	call	_assert_fail
.L1832:
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a5,-32(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a5,-32(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
.L1835:
	nop
.L1819:
.L1834:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	ipcCancel, .-ipcCancel
	.align	2
	.globl	epCancelAll
	.type	epCancelAll, @function
epCancelAll:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	beqz	a5,.L1842
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_head
	mv	a5,a0
	sw	a5,-20(s0)
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_epQueue_head
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_epQueue_tail
	j	.L1840
.L1841:
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a5,-20(s0)
	lw	a5,192(a5)
	sw	a5,-20(s0)
.L1840:
	lw	a5,-20(s0)
	bnez	a5,.L1841
	call	rescheduleRequired
	j	.L1839
.L1842:
	nop
.L1839:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	epCancelAll, .-epCancelAll
	.section	.rodata
	.align	2
.LC287:
	.string	"invalid EP state"
	.text
	.align	2
	.globl	epCancelBadgedSends
	.type	epCancelBadgedSends, @function
epCancelBadgedSends:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a0,-52(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1845
	li	a4,1
	bltu	a5,a4,.L1853
	li	a4,2
	beq	a5,a4,.L1853
	j	.L1852
.L1845:
	lw	a0,-52(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_epQueue_head
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_epQueue_tail
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L1848
.L1850:
	lw	a5,-20(s0)
	add	a5,a5,132
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCBadge
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	lw	a5,192(a5)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L1849
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-20(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L1849:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L1848:
	lw	a5,-20(s0)
	bnez	a5,.L1850
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-52(s0)
	call	ep_ptr_set_queue
	lw	a5,-36(s0)
	beqz	a5,.L1851
	li	a1,1
	lw	a0,-52(s0)
	call	endpoint_ptr_set_state
.L1851:
	call	rescheduleRequired
	nop
	j	.L1847
.L1852:
	lui	a5,%hi(__func__.6052)
	add	a3,a5,%lo(__func__.6052)
	li	a2,365
	lui	a5,%hi(.LC279)
	add	a1,a5,%lo(.LC279)
	lui	a5,%hi(.LC287)
	add	a0,a5,%lo(.LC287)
	call	_fail
.L1853:
	nop
.L1847:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	epCancelBadgedSends, .-epCancelBadgedSends
	.section	.rodata
	.align	2
.LC288:
	.string	"IRQControl: Illegal operation."
	.text
	.align	2
	.globl	decodeIRQControlInvocation
	.type	decodeIRQControlInvocation, @function
decodeIRQControlInvocation:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	mv	s1,a3
	sw	a4,-80(s0)
	lw	a4,-68(s0)
	li	a5,23
	bne	a4,a5,.L1855
	lw	a4,-72(s0)
	li	a5,2
	bleu	a4,a5,.L1856
	lw	a5,0(s1)
	bnez	a5,.L1857
.L1856:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1863
.L1857:
	lw	a1,-80(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a1,-80(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-80(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-48(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L1859
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,12(a5)
	li	a5,3
	j	.L1863
.L1859:
	lw	a0,-24(s0)
	call	isIRQActive
	mv	a5,a0
	beqz	a5,.L1860
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,9
	sw	a4,24(a5)
	li	a5,3
	j	.L1863
.L1860:
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	beqz	a5,.L1861
	lw	a5,-56(s0)
	j	.L1863
.L1861:
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a0,-36(s0)
	call	ensureEmptySlot
	sw	a0,-40(s0)
	lw	a5,-40(s0)
	beqz	a5,.L1862
	lw	a5,-40(s0)
	j	.L1863
.L1862:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a2,-76(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	invokeIRQControl
	mv	a5,a0
	j	.L1863
.L1855:
	lw	a4,-68(s0)
	li	a5,24
	bne	a4,a5,.L1864
	lw	a5,0(s1)
	sw	a5,-96(s0)
	lw	a5,4(s1)
	sw	a5,-92(s0)
	lw	a5,8(s1)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a1,a5
	lw	a0,-72(s0)
	call	Arch_decodeInterruptControl
	mv	a5,a0
	j	.L1863
.L1864:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,77
	lui	a5,%hi(__func__.6068)
	add	a1,a5,%lo(__func__.6068)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC288)
	add	a0,a5,%lo(.LC288)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L1863:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	decodeIRQControlInvocation, .-decodeIRQControlInvocation
	.align	2
	.globl	invokeIRQControl
	.type	invokeIRQControl, @function
invokeIRQControl:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a1,-36(s0)
	li	a0,1
	call	setIRQState
	lw	a0,-36(s0)
	call	cap_irq_handler_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteInsert
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQControl, .-invokeIRQControl
	.section	.rodata
	.align	2
.LC289:
	.string	"IRQSetHandler: provided cap is not an async endpoint capability."
	.align	2
.LC290:
	.string	"IRQSetHandler: caller does not have send rights on the endpoint."
	.align	2
.LC291:
	.string	"IRQSetMode: Not enough arguments"
	.align	2
.LC292:
	.string	"IRQHandler: Illegal operation."
	.text
	.align	2
	.globl	decodeIRQHandlerInvocation
	.type	decodeIRQHandlerInvocation, @function
decodeIRQHandlerInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	mv	s1,a3
	sw	a4,-64(s0)
	lw	a5,-52(s0)
	li	a4,26
	beq	a5,a4,.L1869
	li	a4,26
	bgtu	a5,a4,.L1870
	li	a4,25
	beq	a5,a4,.L1871
	j	.L1868
.L1870:
	li	a4,27
	beq	a5,a4,.L1872
	li	a4,28
	beq	a5,a4,.L1873
	j	.L1868
.L1871:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-60(s0)
	call	invokeIRQHandler_AckIRQ
	mv	a5,zero
	j	.L1874
.L1869:
	lw	a5,0(s1)
	bnez	a5,.L1875
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1874
.L1875:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,0(s1)
	sw	a5,-20(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L1877
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	bnez	a5,.L1878
.L1877:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	beq	a4,a5,.L1879
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,116
	lui	a5,%hi(__func__.6085)
	add	a1,a5,%lo(__func__.6085)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC289)
	add	a0,a5,%lo(.LC289)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	j	.L1880
.L1879:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,118
	lui	a5,%hi(__func__.6085)
	add	a1,a5,%lo(__func__.6085)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC290)
	add	a0,a5,%lo(.LC290)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
.L1880:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1874
.L1878:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a3,-20(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-60(s0)
	call	invokeIRQHandler_SetIRQHandler
	mv	a5,zero
	j	.L1874
.L1872:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-60(s0)
	call	invokeIRQHandler_ClearIRQHandler
	mv	a5,zero
	j	.L1874
.L1873:
	lw	a4,-56(s0)
	li	a5,1
	bgtu	a4,a5,.L1881
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,138
	lui	a5,%hi(__func__.6085)
	add	a1,a5,%lo(__func__.6085)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-56(s0)
	lui	a5,%hi(.LC291)
	add	a0,a5,%lo(.LC291)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1874
.L1881:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-64(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a4,a5
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a2,a5
	mv	a1,a4
	lw	a0,-60(s0)
	call	invokeIRQHandler_SetMode
	mv	a5,zero
	j	.L1874
.L1868:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,151
	lui	a5,%hi(__func__.6085)
	add	a1,a5,%lo(__func__.6085)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC292)
	add	a0,a5,%lo(.LC292)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L1874:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeIRQHandlerInvocation, .-decodeIRQHandlerInvocation
	.align	2
	.globl	invokeIRQHandler_AckIRQ
	.type	invokeIRQHandler_AckIRQ, @function
invokeIRQHandler_AckIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a1,-20(s0)
	mv	a0,zero
	call	maskInterrupt
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeIRQHandler_AckIRQ, .-invokeIRQHandler_AckIRQ
	.align	2
	.globl	invokeIRQHandler_SetMode
	.type	invokeIRQHandler_SetMode, @function
invokeIRQHandler_SetMode:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setInterruptMode
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeIRQHandler_SetMode, .-invokeIRQHandler_SetMode
	.align	2
	.globl	invokeIRQHandler_SetIRQHandler
	.type	invokeIRQHandler_SetIRQHandler, @function
invokeIRQHandler_SetIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-48(s0)
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	lw	a3,-20(s0)
	lw	a2,-48(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cteInsert
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQHandler_SetIRQHandler, .-invokeIRQHandler_SetIRQHandler
	.align	2
	.globl	invokeIRQHandler_ClearIRQHandler
	.type	invokeIRQHandler_ClearIRQHandler, @function
invokeIRQHandler_ClearIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQHandler_ClearIRQHandler, .-invokeIRQHandler_ClearIRQHandler
	.section	.rodata
	.align	2
.LC293:
	.string	"IRQ %d"
	.text
	.align	2
	.globl	deletingIRQHandler
	.type	deletingIRQHandler, @function
deletingIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,192
	lui	a5,%hi(__func__.6113)
	add	a1,a5,%lo(__func__.6113)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-36(s0)
	lui	a5,%hi(.LC293)
	add	a0,a5,%lo(.LC293)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	deletingIRQHandler, .-deletingIRQHandler
	.align	2
	.globl	deletedIRQHandler
	.type	deletedIRQHandler, @function
deletedIRQHandler:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a1,-20(s0)
	mv	a0,zero
	call	setIRQState
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	deletedIRQHandler, .-deletedIRQHandler
	.section	.rodata
	.align	2
.LC294:
	.string	"Undelivered IRQ: %d\n"
	.align	2
.LC295:
	.string	"Received disabled IRQ: %d\n"
	.align	2
.LC296:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/interrupt.c"
	.align	2
.LC297:
	.string	"Invalid IRQ state"
	.text
	.align	2
	.globl	handleInterrupt
	.type	handleInterrupt, @function
handleInterrupt:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a5,0(a5)
	li	a4,1
	beq	a5,a4,.L1890
	li	a4,1
	bltu	a5,a4,.L1891
	li	a4,2
	beq	a5,a4,.L1892
	li	a4,3
	beq	a5,a4,.L1893
	j	.L1897
.L1890:
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L1894
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	beqz	a5,.L1894
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	sendAsyncIPC
	j	.L1895
.L1894:
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC294)
	add	a0,a5,%lo(.LC294)
	call	printf
.L1895:
	lw	a1,-36(s0)
	li	a0,1
	call	maskInterrupt
	nop
	j	.L1896
.L1892:
	call	timerTick
	call	resetTimer
	j	.L1896
.L1893:
	lw	a0,-36(s0)
	call	handleReservedIRQ
	j	.L1896
.L1891:
	lw	a1,-36(s0)
	li	a0,1
	call	maskInterrupt
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC295)
	add	a0,a5,%lo(.LC295)
	call	printf
	j	.L1896
.L1897:
	lui	a5,%hi(__func__.6127)
	add	a3,a5,%lo(__func__.6127)
	li	a2,248
	lui	a5,%hi(.LC296)
	add	a1,a5,%lo(.LC296)
	lui	a5,%hi(.LC297)
	add	a0,a5,%lo(.LC297)
	call	_fail
.L1896:
	lw	a0,-36(s0)
	call	ackInterrupt
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	handleInterrupt, .-handleInterrupt
	.align	2
	.globl	isIRQActive
	.type	isIRQActive, @function
isIRQActive:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a5,0(a5)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	isIRQActive, .-isIRQActive
	.align	2
	.globl	setIRQState
	.type	setIRQState, @function
setIRQState:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	lw	a1,-24(s0)
	mv	a0,a5
	call	maskInterrupt
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setIRQState, .-setIRQState
	.section	.rodata
	.align	2
.LC298:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/objecttype.c"
	.text
	.align	2
	.globl	getObjectSize
	.type	getObjectSize, @function
getObjectSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	li	a5,4
	bleu	a4,a5,.L1902
	lw	a0,-20(s0)
	call	Arch_getObjectSize
	mv	a5,a0
	j	.L1903
.L1902:
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L1904
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L1906)
	add	a5,a5,%lo(.L1906)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1906:
	.word	.L1905
	.word	.L1907
	.word	.L1908
	.word	.L1909
	.word	.L1910
	.text
.L1907:
	li	a5,9
	j	.L1903
.L1908:
	li	a5,4
	j	.L1903
.L1909:
	li	a5,4
	j	.L1903
.L1910:
	lw	a5,-24(s0)
	add	a5,a5,4
	j	.L1903
.L1905:
	lw	a5,-24(s0)
	j	.L1903
.L1904:
	lui	a5,%hi(__func__.6145)
	add	a3,a5,%lo(__func__.6145)
	li	a2,50
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC166)
	add	a0,a5,%lo(.LC166)
	call	_fail
.L1903:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	getObjectSize, .-getObjectSize
	.align	2
	.globl	deriveCap
	.type	deriveCap, @function
deriveCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1912
	lw	a5,-36(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	Arch_deriveCap
	j	.L1911
.L1912:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,14
	beq	a5,a4,.L1915
	li	a4,46
	beq	a5,a4,.L1916
	li	a4,8
	beq	a5,a4,.L1917
	j	.L1920
.L1916:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1918
.L1915:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1918
.L1917:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1918
.L1920:
	sw	zero,-28(s0)
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L1918:
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
.L1911:
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	deriveCap, .-deriveCap
	.section	.rodata
	.align	2
.LC299:
	.string	"cap_reply_cap_get_capInCDT(cap)"
	.align	2
.LC300:
	.string	"finaliseCap: failed to finalise immediately."
	.align	2
.LC301:
	.string	"!cap_reply_cap_get_capInCDT(replySlot->cap)"
	.align	2
.LC302:
	.string	"cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0"
	.text
	.align	2
	.globl	finaliseCap
	.type	finaliseCap, @function
finaliseCap:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	add	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1922
	lw	a2,-80(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	Arch_finaliseCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1922:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,6
	beq	a5,a4,.L1925
	li	a4,6
	bgtu	a5,a4,.L1926
	beqz	a5,.L1927
	li	a4,4
	beq	a5,a4,.L1928
	j	.L1924
.L1926:
	li	a4,8
	beq	a5,a4,.L1929
	li	a4,62
	beq	a5,a4,.L1927
	j	.L1924
.L1928:
	lw	a5,-80(s0)
	beqz	a5,.L1930
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	a0,a5
	call	epCancelAll
.L1930:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1925:
	lw	a5,-80(s0)
	beqz	a5,.L1931
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1932
	lw	a0,-24(s0)
	call	unbindAsyncEndpoint
.L1932:
	lw	a0,-20(s0)
	call	aepCancelAll
.L1931:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1929:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	bnez	a5,.L1933
	lui	a5,%hi(__FUNCTION__.6169)
	add	a3,a5,%lo(__FUNCTION__.6169)
	li	a2,128
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC299)
	add	a0,a5,%lo(.LC299)
	call	_assert_fail
.L1933:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-32(s0)
	lw	s1,-32(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1927:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1924:
	lw	a5,-84(s0)
	beqz	a5,.L1934
	lui	a5,%hi(__func__.6172)
	add	a3,a5,%lo(__func__.6172)
	li	a2,144
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC300)
	add	a0,a5,%lo(.LC300)
	call	_fail
.L1934:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	beq	a5,a4,.L1936
	li	a4,12
	bgtu	a5,a4,.L1937
	li	a4,10
	beq	a5,a4,.L1938
	j	.L1935
.L1937:
	li	a4,30
	beq	a5,a4,.L1939
	li	a4,46
	beq	a5,a4,.L1940
	j	.L1935
.L1938:
	lw	a5,-80(s0)
	beqz	a5,.L1948
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	mv	s1,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	s2,a0
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	Zombie_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1936:
	lw	a5,-80(s0)
	beqz	a5,.L1949
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	sw	a5,-40(s0)
	lw	a0,-36(s0)
	call	unbindAsyncEndpoint
	lw	a0,-36(s0)
	call	suspend
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L1943
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1944
	lui	a5,%hi(__FUNCTION__.6169)
	add	a3,a5,%lo(__FUNCTION__.6169)
	li	a2,174
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC301)
	add	a0,a5,%lo(.LC301)
	call	_assert_fail
.L1944:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	beqz	a5,.L1945
	lui	a5,%hi(__FUNCTION__.6169)
	add	a3,a5,%lo(__FUNCTION__.6169)
	li	a2,175
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC302)
	add	a0,a5,%lo(.LC302)
	call	_assert_fail
.L1945:
	lw	s1,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L1943:
	lw	a0,-36(s0)
	call	Arch_prepareThreadDelete
	lw	a5,-40(s0)
	mv	a2,a5
	li	a1,32
	li	a0,5
	call	Zombie_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1940:
	lw	a5,-76(s0)
	sw	a5,-60(s0)
	lw	a5,-72(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1939:
	lw	a5,-80(s0)
	beqz	a5,.L1950
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_irq_handler_cap_get_capIRQ
	sw	a0,-48(s0)
	lw	a0,-48(s0)
	call	deletingIRQHandler
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1921
.L1948:
	nop
	j	.L1935
.L1949:
	nop
	j	.L1935
.L1950:
	nop
.L1935:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,3
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
.L1921:
	lw	a0,-68(s0)
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	add	sp,sp,96
	jr	ra
	.size	finaliseCap, .-finaliseCap
	.section	.rodata
	.align	2
.LC303:
	.string	"recycleCap: can't reconstruct Null"
	.align	2
.LC304:
	.string	"ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState"
	.align	2
.LC305:
	.string	"!thread_state_get_tcbQueued(tcb->tcbState)"
	.align	2
.LC306:
	.string	"tcb->boundAsyncEndpoint == NULL"
	.text
	.align	2
	.globl	recycleCap
	.type	recycleCap, @function
recycleCap:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1952
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-52(s0)
	call	Arch_recycleCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1952:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,10
	beq	a5,a4,.L1955
	li	a4,10
	bgtu	a5,a4,.L1956
	beqz	a5,.L1957
	li	a4,4
	beq	a5,a4,.L1958
	j	.L1954
.L1956:
	li	a4,46
	beq	a5,a4,.L1959
	li	a4,62
	beq	a5,a4,.L1960
	li	a4,12
	beq	a5,a4,.L1961
	j	.L1954
.L1957:
	lui	a5,%hi(__func__.6187)
	add	a3,a5,%lo(__func__.6187)
	li	a2,223
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC303)
	add	a0,a5,%lo(.LC303)
	call	_fail
.L1960:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1955:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1961:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1959:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,32
	bne	a4,a5,.L1962
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	add	a5,a5,256
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,132(a5)
	sw	a4,-80(s0)
	lw	a4,136(a5)
	sw	a4,-76(s0)
	lw	a5,140(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tsType
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1963
	lw	a4,-28(s0)
	li	a5,8
	bne	a4,a5,.L1963
	lui	a5,%hi(__FUNCTION__.6195)
	add	a3,a5,%lo(__FUNCTION__.6195)
	li	a2,245
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC304)
	add	a0,a5,%lo(.LC304)
	call	_assert_fail
.L1963:
	lw	a5,-24(s0)
	lw	a4,132(a5)
	sw	a4,-80(s0)
	lw	a4,136(a5)
	sw	a4,-76(s0)
	lw	a5,140(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	beqz	a5,.L1964
	lui	a5,%hi(__FUNCTION__.6195)
	add	a3,a5,%lo(__FUNCTION__.6195)
	li	a2,248
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC305)
	add	a0,a5,%lo(.LC305)
	call	_assert_fail
.L1964:
	lw	a5,-24(s0)
	lw	a5,144(a5)
	beqz	a5,.L1965
	lui	a5,%hi(__FUNCTION__.6195)
	add	a3,a5,%lo(__FUNCTION__.6195)
	li	a2,251
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC306)
	add	a0,a5,%lo(.LC306)
	call	_assert_fail
.L1965:
	li	a1,200
	lw	a0,-24(s0)
	call	memzero
	lw	a5,-24(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,172(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a4,%lo(ksCurDomain)(a5)
	lw	a5,-24(s0)
	sw	a4,164(a5)
	lw	a5,-24(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1962:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a3,a5
	mv	a2,zero
	mv	a1,zero
	lw	a0,-20(s0)
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1958:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_endpoint_cap_get_capEPBadge
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	beqz	a5,.L1966
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	epCancelBadgedSends
.L1966:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1953
.L1954:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
.L1953:
	mv	a4,zero
	lw	a4,-44(s0)
	mv	a5,zero
	lw	a5,-40(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	recycleCap, .-recycleCap
	.align	2
	.globl	hasRecycleRights
	.type	hasRecycleRights, @function
hasRecycleRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L1969
	li	a4,4
	bgtu	a5,a4,.L1970
	beqz	a5,.L1971
	j	.L1968
.L1970:
	li	a4,6
	beq	a5,a4,.L1972
	li	a4,62
	bne	a5,a4,.L1968
.L1971:
	mv	a5,zero
	j	.L1973
.L1969:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	beqz	a5,.L1974
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	a5,a0
	beqz	a5,.L1974
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	beqz	a5,.L1974
	li	a5,1
	j	.L1975
.L1974:
	mv	a5,zero
.L1975:
	j	.L1973
.L1972:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	beqz	a5,.L1976
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	a5,a0
	beqz	a5,.L1976
	li	a5,1
	j	.L1977
.L1976:
	mv	a5,zero
.L1977:
	j	.L1973
.L1968:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1978
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	Arch_hasRecycleRights
	mv	a5,a0
	j	.L1973
.L1978:
	li	a5,1
.L1973:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	hasRecycleRights, .-hasRecycleRights
	.align	2
	.globl	sameRegionAs
	.type	sameRegionAs, @function
sameRegionAs:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L1980
	sll	a4,a5,2
	lui	a5,%hi(.L1982)
	add	a5,a5,%lo(.L1982)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1982:
	.word	.L1980
	.word	.L1980
	.word	.L1981
	.word	.L1980
	.word	.L1983
	.word	.L1980
	.word	.L1984
	.word	.L1980
	.word	.L1985
	.word	.L1980
	.word	.L1986
	.word	.L1980
	.word	.L1987
	.word	.L1980
	.word	.L1988
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1989
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1980
	.word	.L1990
	.text
.L1981:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capPtr
	sw	a0,-20(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-28(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capSizeBits
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-24(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1991
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L1991
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	bgtu	a4,a5,.L1991
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L1991
	li	a5,1
	j	.L1992
.L1991:
	mv	a5,zero
.L1992:
	j	.L1993
.L1983:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L2007
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1993
.L1984:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L2008
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1993
.L1986:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	bne	a4,a5,.L2009
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	bne	s1,a5,.L1998
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a5,a0
	bne	s1,a5,.L1998
	li	a5,1
	j	.L1999
.L1998:
	mv	a5,zero
.L1999:
	j	.L1993
.L1987:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,12
	bne	a4,a5,.L2010
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1993
.L1985:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L2011
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1993
.L1990:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,62
	bne	a4,a5,.L2012
	li	a5,1
	j	.L1993
.L1988:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,14
	beq	a4,a5,.L2003
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L2013
.L2003:
	li	a5,1
	j	.L1993
.L1989:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L2014
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1993
.L1980:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2015
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2015
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	Arch_sameRegionAs
	mv	a5,a0
	j	.L1993
.L2007:
	nop
	j	.L1995
.L2008:
	nop
	j	.L1995
.L2009:
	nop
	j	.L1995
.L2010:
	nop
	j	.L1995
.L2011:
	nop
	j	.L1995
.L2012:
	nop
	j	.L1995
.L2013:
	nop
	j	.L1995
.L2014:
	nop
	j	.L1995
.L2015:
	nop
.L1995:
	mv	a5,zero
.L1993:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	sameRegionAs, .-sameRegionAs
	.align	2
	.globl	sameObjectAs
	.type	sameObjectAs, @function
sameObjectAs:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,2
	bne	a4,a5,.L2017
	mv	a5,zero
	j	.L2018
.L2017:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,14
	bne	a4,a5,.L2019
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L2019
	mv	a5,zero
	j	.L2018
.L2019:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2020
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2020
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	Arch_sameObjectAs
	mv	a5,a0
	j	.L2018
.L2020:
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	sameRegionAs
	mv	a5,a0
.L2018:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	sameObjectAs, .-sameObjectAs
	.align	2
	.globl	updateCapData
	.type	updateCapData, @function
updateCapData:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2022
	lw	a2,-64(s0)
	lw	a3,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	Arch_updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2022:
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,6
	beq	a5,a4,.L2025
	li	a4,10
	beq	a5,a4,.L2026
	li	a4,4
	bne	a5,a4,.L2032
	lw	a5,-52(s0)
	bnez	a5,.L2028
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	bnez	a5,.L2028
	lw	a2,-56(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_endpoint_cap_set_capEPBadge
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2028:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2025:
	lw	a5,-52(s0)
	bnez	a5,.L2029
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	bnez	a5,.L2029
	lw	a2,-56(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_async_endpoint_cap_set_capAEPBadge
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2029:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2026:
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	lw	a0,-36(s0)
	call	cnode_capdata_get_guardSize
	sw	a0,-20(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	lw	a5,-20(s0)
	add	a4,a4,a5
	li	a5,32
	bleu	a4,a5,.L2030
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2030:
	lw	a0,-36(s0)
	call	cnode_capdata_get_guard
	mv	a3,a0
	li	a4,1
	lw	a5,-20(s0)
	sll	a5,a4,a5
	add	a5,a5,-1
	and	a5,a3,a5
	sw	a5,-24(s0)
	lw	a2,-24(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_cnode_cap_set_capCNodeGuard
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a2,-20(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_cnode_cap_set_capCNodeGuardSize
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	j	.L2023
.L2032:
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	lw	a5,-60(s0)
	sw	a5,-28(s0)
.L2023:
	mv	a4,zero
	lw	a4,-32(s0)
	mv	a5,zero
	lw	a5,-28(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,52(sp)
	lw	s3,48(sp)
	add	sp,sp,64
	jr	ra
	.size	updateCapData, .-updateCapData
	.section	.rodata
	.align	2
.LC307:
	.string	"Invalid cap type"
	.text
	.align	2
	.globl	maskCapRights
	.type	maskCapRights, @function
maskCapRights:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2034
	lw	a1,-76(s0)
	lw	a2,-72(s0)
	lw	a0,-68(s0)
	call	Arch_maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	j	.L2035
.L2034:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L2036
	sll	a4,a5,2
	lui	a5,%hi(.L2038)
	add	a5,a5,%lo(.L2038)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L2038:
	.word	.L2037
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2039
	.word	.L2036
	.word	.L2040
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2037
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2036
	.word	.L2037
	.text
.L2037:
	lw	a5,-76(s0)
	sw	a5,-40(s0)
	lw	a5,-72(s0)
	sw	a5,-36(s0)
	j	.L2035
.L2039:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowWrite
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_set_capCanSend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_set_capCanReceive
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowGrant
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_set_capCanGrant
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a5,-48(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-36(s0)
	j	.L2035
.L2040:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowWrite
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_set_capAEPCanSend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_async_endpoint_cap_set_capAEPCanReceive
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	j	.L2035
.L2036:
	lui	a5,%hi(__func__.6262)
	add	a3,a5,%lo(__func__.6262)
	li	a2,506
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC307)
	add	a0,a5,%lo(.LC307)
	call	_fail
.L2035:
	mv	a4,zero
	lw	a4,-40(s0)
	mv	a5,zero
	lw	a5,-36(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	add	sp,sp,80
	jr	ra
	.size	maskCapRights, .-maskCapRights
	.align	2
	.globl	createObject
	.type	createObject, @function
createObject:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-36(s0)
	li	a5,4
	bleu	a4,a5,.L2042
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	Arch_createObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2042:
	lw	a4,-36(s0)
	li	a5,4
	bgtu	a4,a5,.L2044
	lw	a5,-36(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L2046)
	add	a5,a5,%lo(.L2046)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L2046:
	.word	.L2045
	.word	.L2047
	.word	.L2048
	.word	.L2049
	.word	.L2050
	.text
.L2047:
	li	a1,512
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	add	a5,a5,256
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,172(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a4,%lo(ksCurDomain)(a5)
	lw	a5,-20(s0)
	sw	a4,164(a5)
	lw	a5,-20(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2048:
	li	a1,16
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	mv	a4,a5
	li	a3,1
	li	a2,1
	li	a1,1
	mv	a0,zero
	call	cap_endpoint_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2049:
	li	a1,16
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	mv	a3,a5
	li	a2,1
	li	a1,1
	mv	a0,zero
	call	cap_async_endpoint_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2050:
	lw	a5,-44(s0)
	add	a5,a5,4
	li	a4,1
	sll	a5,a4,a5
	mv	a1,a5
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	mv	a3,a4
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2045:
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-48(s0)
	call	cap_untyped_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L2043
.L2044:
	lui	a5,%hi(__func__.6276)
	add	a3,a5,%lo(__func__.6276)
	li	a2,568
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC166)
	add	a0,a5,%lo(.LC166)
	call	_fail
.L2043:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	createObject, .-createObject
	.align	2
	.globl	createNewObjects
	.type	createNewObjects, @function
createNewObjects:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	mv	s1,a2
	sw	a3,-60(s0)
	sw	a4,-64(s0)
	sw	a5,-68(s0)
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	getObjectSize
	sw	a0,-28(s0)
	sw	zero,-20(s0)
	j	.L2052
.L2053:
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	sll	a4,a4,a5
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-64(s0)
	lw	a3,-68(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	createObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a4,0(s1)
	lw	a3,4(s1)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	insertNewCap
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2052:
	lw	a4,8(s1)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L2053
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	createNewObjects, .-createNewObjects
	.section	.rodata
	.align	2
.LC308:
	.string	"Attempted to invoke a null cap #%u."
	.align	2
.LC309:
	.string	"Attempted to invoke a zombie cap #%u."
	.align	2
.LC310:
	.string	"Attempted to invoke a read-only endpoint cap #%u."
	.align	2
.LC311:
	.string	"Attempted to invoke a read-only async-endpoint cap #%u."
	.align	2
.LC312:
	.string	"Attempted to invoke an invalid reply cap #%u."
	.text
	.align	2
	.globl	decodeInvocation
	.type	decodeInvocation, @function
decodeInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	mv	s1,a6
	sw	a7,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L2055
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	mv	a6,a5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	Arch_decodeInvocation
	mv	a5,a0
	j	.L2056
.L2055:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L2057
	sll	a4,a5,2
	lui	a5,%hi(.L2059)
	add	a5,a5,%lo(.L2059)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L2059:
	.word	.L2058
	.word	.L2057
	.word	.L2060
	.word	.L2057
	.word	.L2061
	.word	.L2057
	.word	.L2062
	.word	.L2057
	.word	.L2063
	.word	.L2057
	.word	.L2064
	.word	.L2057
	.word	.L2065
	.word	.L2057
	.word	.L2066
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2067
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2068
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2057
	.word	.L2069
	.text
.L2058:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,608
	lui	a5,%hi(__func__.6304)
	add	a1,a5,%lo(__func__.6304)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC308)
	add	a0,a5,%lo(.LC308)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L2056
.L2068:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,614
	lui	a5,%hi(__func__.6304)
	add	a1,a5,%lo(__func__.6304)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC309)
	add	a0,a5,%lo(.LC309)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L2056
.L2061:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2070
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,622
	lui	a5,%hi(__func__.6304)
	add	a1,a5,%lo(__func__.6304)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC310)
	add	a0,a5,%lo(.LC310)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L2056
.L2070:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	s2,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	lw	a4,0(s0)
	lw	a3,-44(s0)
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	performInvocation_Endpoint
	mv	a5,a0
	j	.L2056
.L2062:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2071
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,637
	lui	a5,%hi(__func__.6304)
	add	a1,a5,%lo(__func__.6304)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC311)
	add	a0,a5,%lo(.LC311)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L2056
.L2071:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	performInvocation_AsyncEndpoint
	mv	a5,a0
	j	.L2056
.L2063:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2072
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,652
	lui	a5,%hi(__func__.6304)
	add	a1,a5,%lo(__func__.6304)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC312)
	add	a0,a5,%lo(.LC312)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L2056
.L2072:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	lw	a1,-32(s0)
	mv	a0,a5
	call	performInvocation_Reply
	mv	a5,a0
	j	.L2056
.L2065:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	lw	a6,0(s0)
	lw	a4,-32(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeTCBInvocation
	mv	a5,a0
	j	.L2056
.L2069:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a3,4(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeDomainInvocation
	mv	a5,a0
	j	.L2056
.L2064:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,4(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeCNodeInvocation
	mv	a5,a0
	j	.L2056
.L2060:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	lw	a6,0(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeUntypedInvocation
	mv	a5,a0
	j	.L2056
.L2066:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,4(s0)
	mv	a3,a5
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeIRQControlInvocation
	mv	a5,a0
	j	.L2056
.L2067:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a2,a0
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,4(s0)
	mv	a3,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeIRQHandlerInvocation
	mv	a5,a0
	j	.L2056
.L2057:
	lui	a5,%hi(__func__.6304)
	add	a3,a5,%lo(__func__.6304)
	li	a2,685
	lui	a5,%hi(.LC298)
	add	a1,a5,%lo(.LC298)
	lui	a5,%hi(.LC307)
	add	a0,a5,%lo(.LC307)
	call	_fail
.L2056:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeInvocation, .-decodeInvocation
	.align	2
	.globl	performInvocation_Endpoint
	.type	performInvocation_Endpoint, @function
performInvocation_Endpoint:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	lw	a5,-20(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	sendIPC
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	performInvocation_Endpoint, .-performInvocation_Endpoint
	.align	2
	.globl	performInvocation_AsyncEndpoint
	.type	performInvocation_AsyncEndpoint, @function
performInvocation_AsyncEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sendAsyncIPC
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performInvocation_AsyncEndpoint, .-performInvocation_AsyncEndpoint
	.align	2
	.globl	performInvocation_Reply
	.type	performInvocation_Reply, @function
performInvocation_Reply:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	doReplyTransfer
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performInvocation_Reply, .-performInvocation_Reply
	.align	2
	.type	addToBitmap, @function
addToBitmap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	prio_to_l1index
	sw	a0,-20(s0)
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	or	a4,a4,a5
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a3,-36(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	and	a5,a5,31
	li	a3,1
	sll	a5,a3,a5
	or	a3,a4,a5
	lui	a2,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a2,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	sw	a3,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	addToBitmap, .-addToBitmap
	.align	2
	.type	removeFromBitmap, @function
removeFromBitmap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	prio_to_l1index
	sw	a0,-20(s0)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	and	a5,a5,31
	li	a3,1
	sll	a5,a3,a5
	not	a5,a5
	and	a3,a4,a5
	lui	a2,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a2,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	sw	a3,0(a5)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2082
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	not	a5,a5
	and	a4,a4,a5
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a3,-36(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a3,a5
	sw	a4,0(a5)
.L2082:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	removeFromBitmap, .-removeFromBitmap
	.align	2
	.globl	tcbSchedEnqueue
	.type	tcbSchedEnqueue, @function
tcbSchedEnqueue:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,132(a5)
	sw	a4,-80(s0)
	lw	a4,136(a5)
	sw	a4,-76(s0)
	lw	a5,140(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	bnez	a5,.L2087
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,168(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L2085
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	addToBitmap
	j	.L2086
.L2085:
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,188(a5)
.L2086:
	lw	a5,-52(s0)
	sw	zero,188(a5)
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	sw	a4,184(a5)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,132
	li	a1,1
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L2087:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedEnqueue, .-tcbSchedEnqueue
	.align	2
	.globl	tcbSchedAppend
	.type	tcbSchedAppend, @function
tcbSchedAppend:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,132(a5)
	sw	a4,-80(s0)
	lw	a4,136(a5)
	sw	a4,-76(s0)
	lw	a5,140(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	bnez	a5,.L2092
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,168(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	bnez	a5,.L2090
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	addToBitmap
	j	.L2091
.L2090:
	lw	a5,-32(s0)
	lw	a4,-52(s0)
	sw	a4,184(a5)
.L2091:
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	sw	a4,188(a5)
	lw	a5,-52(s0)
	sw	zero,184(a5)
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,132
	li	a1,1
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L2092:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedAppend, .-tcbSchedAppend
	.align	2
	.globl	tcbSchedDequeue
	.type	tcbSchedDequeue, @function
tcbSchedDequeue:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,132(a5)
	sw	a4,-80(s0)
	lw	a4,136(a5)
	sw	a4,-76(s0)
	lw	a5,140(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	beqz	a5,.L2099
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,168(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a5,188(a5)
	beqz	a5,.L2095
	lw	a5,-52(s0)
	lw	a5,188(a5)
	lw	a4,-52(s0)
	lw	a4,184(a4)
	sw	a4,184(a5)
	j	.L2096
.L2095:
	lw	a5,-52(s0)
	lw	a5,184(a5)
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	lw	a5,184(a5)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2096
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	removeFromBitmap
.L2096:
	lw	a5,-52(s0)
	lw	a5,184(a5)
	beqz	a5,.L2097
	lw	a5,-52(s0)
	lw	a5,184(a5)
	lw	a4,-52(s0)
	lw	a4,188(a4)
	sw	a4,188(a5)
	j	.L2098
.L2097:
	lw	a5,-52(s0)
	lw	a5,188(a5)
	sw	a5,-32(s0)
.L2098:
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,132
	mv	a1,zero
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L2099:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedDequeue, .-tcbSchedDequeue
	.align	2
	.globl	tcbEPAppend
	.type	tcbEPAppend, @function
tcbEPAppend:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-44(s0)
	bnez	a5,.L2101
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	j	.L2102
.L2101:
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sw	a4,192(a5)
.L2102:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sw	a4,196(a5)
	lw	a5,-36(s0)
	sw	zero,192(a5)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	tcbEPAppend, .-tcbEPAppend
	.align	2
	.globl	tcbEPDequeue
	.type	tcbEPDequeue, @function
tcbEPDequeue:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-36(s0)
	lw	a5,196(a5)
	beqz	a5,.L2105
	lw	a5,-36(s0)
	lw	a5,196(a5)
	lw	a4,-36(s0)
	lw	a4,192(a4)
	sw	a4,192(a5)
	j	.L2106
.L2105:
	lw	a5,-36(s0)
	lw	a5,192(a5)
	sw	a5,-44(s0)
.L2106:
	lw	a5,-36(s0)
	lw	a5,192(a5)
	beqz	a5,.L2107
	lw	a5,-36(s0)
	lw	a5,192(a5)
	lw	a4,-36(s0)
	lw	a4,196(a4)
	sw	a4,196(a5)
	j	.L2108
.L2107:
	lw	a5,-36(s0)
	lw	a5,196(a5)
	sw	a5,-40(s0)
.L2108:
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	tcbEPDequeue, .-tcbEPDequeue
	.align	2
	.globl	getExtraCPtr
	.type	getExtraCPtr, @function
getExtraCPtr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	add	a5,a5,122
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getExtraCPtr, .-getExtraCPtr
	.align	2
	.globl	setExtraBadge
	.type	setExtraBadge, @function
setExtraBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-28(s0)
	add	a5,a5,122
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setExtraBadge, .-setExtraBadge
	.section	.rodata
	.align	2
.LC313:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/object/tcb.c"
	.align	2
.LC314:
	.string	"cap_get_capType(masterCap) == cap_reply_cap"
	.align	2
.LC315:
	.string	"cap_reply_cap_get_capReplyMaster(masterCap)"
	.align	2
.LC316:
	.string	"TCB_PTR(cap_reply_cap_get_capTCBPtr(masterCap)) == NULL"
	.align	2
.LC317:
	.string	"cap_get_capType(callerCap) == cap_null_cap"
	.text
	.align	2
	.globl	setupCallerCap
	.type	setupCallerCap, @function
setupCallerCap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	li	a1,5
	lw	a0,-52(s0)
	call	setThreadState
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L2114
	lui	a5,%hi(__FUNCTION__.6387)
	add	a3,a5,%lo(__FUNCTION__.6387)
	li	a2,204
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC314)
	add	a0,a5,%lo(.LC314)
	call	_assert_fail
.L2114:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	bnez	a5,.L2115
	lui	a5,%hi(__FUNCTION__.6387)
	add	a3,a5,%lo(__FUNCTION__.6387)
	li	a2,205
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC315)
	add	a0,a5,%lo(.LC315)
	call	_assert_fail
.L2115:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	beqz	a5,.L2116
	lui	a5,%hi(__FUNCTION__.6387)
	add	a3,a5,%lo(__FUNCTION__.6387)
	li	a2,206
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC316)
	add	a0,a5,%lo(.LC316)
	call	_assert_fail
.L2116:
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a5,-56(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,0(a5)
	sw	a4,-40(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L2117
	lui	a5,%hi(__FUNCTION__.6387)
	add	a3,a5,%lo(__FUNCTION__.6387)
	li	a2,211
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC317)
	add	a0,a5,%lo(.LC317)
	call	_assert_fail
.L2117:
	lw	a5,-52(s0)
	lw	s1,-24(s0)
	mv	a2,a5
	mv	a1,zero
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	setupCallerCap, .-setupCallerCap
	.section	.rodata
	.align	2
.LC318:
	.string	"cap_reply_cap_get_capInCDT(callerSlot->cap) == cap_reply_cap_get_capInCDT(replySlot->cap)"
	.text
	.align	2
	.globl	deleteCallerCap
	.type	deleteCallerCap, @function
deleteCallerCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L2125
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2120
	lw	a5,-24(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L2121
	lui	a5,%hi(__FUNCTION__.6394)
	add	a3,a5,%lo(__FUNCTION__.6394)
	li	a2,227
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC236)
	add	a0,a5,%lo(.LC236)
	call	_assert_fail
.L2121:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	s1,a0
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beq	s1,a5,.L2122
	lui	a5,%hi(__FUNCTION__.6394)
	add	a3,a5,%lo(__FUNCTION__.6394)
	li	a2,228
	lui	a5,%hi(.LC313)
	add	a1,a5,%lo(.LC313)
	lui	a5,%hi(.LC318)
	add	a0,a5,%lo(.LC318)
	call	_assert_fail
.L2122:
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L2123
	lw	a0,-28(s0)
	call	cdtRemove
	lw	a5,-28(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
.L2123:
	lw	a5,-28(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
.L2120:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L2124
	lw	a0,-20(s0)
	call	cdtRemove
.L2124:
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L2125:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	deleteCallerCap, .-deleteCallerCap
	.comm	current_extra_caps,12,4
	.align	2
	.globl	lookupExtraCaps
	.type	lookupExtraCaps, @function
lookupExtraCaps:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a5,-56(s0)
	bnez	a5,.L2127
	lui	a5,%hi(current_extra_caps)
	sw	zero,%lo(current_extra_caps)(a5)
	mv	a5,zero
	j	.L2133
.L2127:
	lw	a0,-60(s0)
	call	message_info_get_msgExtraCaps
	sw	a0,-24(s0)
	sw	zero,-20(s0)
	j	.L2129
.L2131:
	lw	a1,-20(s0)
	lw	a0,-56(s0)
	call	getExtraCPtr
	sw	a0,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	beqz	a5,.L2130
	mv	a1,zero
	lw	a0,-28(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lw	a5,-36(s0)
	j	.L2133
.L2130:
	lw	a4,-32(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a3,-20(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(current_extra_caps)
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2129:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L2131
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L2132
	lui	a5,%hi(current_extra_caps)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(current_extra_caps)
	add	a5,a4,a5
	sw	zero,0(a5)
.L2132:
	mv	a5,zero
.L2133:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupExtraCaps, .-lookupExtraCaps
	.align	2
	.globl	copyMRs
	.type	copyMRs, @function
copyMRs:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-20(s0)
	j	.L2135
.L2137:
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-44(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2135:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bgeu	a4,a5,.L2136
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L2137
.L2136:
	lw	a5,-48(s0)
	beqz	a5,.L2138
	lw	a5,-40(s0)
	bnez	a5,.L2141
.L2138:
	lw	a5,-20(s0)
	j	.L2140
.L2142:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	add	a4,a4,1
	sll	a4,a4,2
	lw	a3,-40(s0)
	add	a4,a3,a4
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2141:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L2142
	lw	a5,-20(s0)
.L2140:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	copyMRs, .-copyMRs
	.section	.rodata
	.align	2
.LC319:
	.string	"TCB: Illegal operation."
	.text
	.align	2
	.globl	decodeTCBInvocation
	.type	decodeTCBInvocation, @function
decodeTCBInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-36(s0)
	mv	ra,a5
	sw	a6,-40(s0)
	sw	a7,-44(s0)
	lw	a4,-20(s0)
	li	a5,12
	bgtu	a4,a5,.L2144
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L2146)
	add	a5,a5,%lo(.L2146)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L2146:
	.word	.L2144
	.word	.L2144
	.word	.L2145
	.word	.L2147
	.word	.L2148
	.word	.L2149
	.word	.L2150
	.word	.L2151
	.word	.L2152
	.word	.L2153
	.word	.L2154
	.word	.L2155
	.word	.L2156
	.text
.L2145:
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeReadRegisters
	mv	a5,a0
	j	.L2157
.L2147:
	lw	a3,-44(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeWriteRegisters
	mv	a5,a0
	j	.L2157
.L2148:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,-44(s0)
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeCopyRegisters
	mv	a5,a0
	j	.L2157
.L2153:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	call	invokeTCB_Suspend
	mv	a5,a0
	j	.L2157
.L2154:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	call	invokeTCB_Resume
	mv	a5,a0
	j	.L2157
.L2149:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeTCBConfigure
	mv	a5,a0
	j	.L2157
.L2150:
	lw	a3,-44(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetPriority
	mv	a5,a0
	j	.L2157
.L2151:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetIPCBuffer
	mv	a5,a0
	j	.L2157
.L2152:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetSpace
	mv	a5,a0
	j	.L2157
.L2155:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a5,s0,-64
	mv	a2,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeBindAEP
	mv	a5,a0
	j	.L2157
.L2156:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeUnbindAEP
	mv	a5,a0
	j	.L2157
.L2144:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,358
	lui	a5,%hi(__func__.6443)
	add	a1,a5,%lo(__func__.6443)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC319)
	add	a0,a5,%lo(.LC319)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L2157:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeTCBInvocation, .-decodeTCBInvocation
	.section	.rodata
	.align	2
.LC320:
	.string	"TCB CopyRegisters: Truncated message."
	.align	2
.LC321:
	.string	"TCB CopyRegisters: Invalid source TCB."
	.text
	.align	2
	.globl	decodeCopyRegisters
	.type	decodeCopyRegisters, @function
decodeCopyRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	mv	s1,a3
	sw	a4,-64(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2159
	lw	a5,0(s1)
	bnez	a5,.L2160
.L2159:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,381
	lui	a5,%hi(__func__.6459)
	add	a1,a5,%lo(__func__.6459)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC320)
	add	a0,a5,%lo(.LC320)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2164
.L2160:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-24(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,12
	bne	a4,a5,.L2162
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	lw	a5,-20(s0)
	and	a2,a5,1
	lw	a5,-20(s0)
	and	a3,a5,2
	lw	a5,-20(s0)
	and	a4,a5,4
	lw	a5,-20(s0)
	and	a5,a5,8
	lw	a6,-24(s0)
	lw	a1,-28(s0)
	call	invokeTCB_CopyRegisters
	mv	a5,a0
	j	.L2164
.L2162:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,395
	lui	a5,%hi(__func__.6459)
	add	a1,a5,%lo(__func__.6459)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC321)
	add	a0,a5,%lo(.LC321)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,4(a5)
	li	a5,3
.L2164:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeCopyRegisters, .-decodeCopyRegisters
	.section	.rodata
	.align	2
.LC322:
	.string	"TCB ReadRegisters: Truncated message."
	.align	2
.LC323:
	.string	"TCB ReadRegisters: Attempted to read an invalid number of registers (%d)."
	.text
	.align	2
	.globl	decodeReadRegisters
	.type	decodeReadRegisters, @function
decodeReadRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a4,-44(s0)
	li	a5,1
	bgtu	a4,a5,.L2166
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,423
	lui	a5,%hi(__func__.6471)
	add	a1,a5,%lo(__func__.6471)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC322)
	add	a0,a5,%lo(.LC322)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2167
.L2166:
	lw	a1,-52(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-52(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2168
	lw	a4,-24(s0)
	li	a5,17
	bleu	a4,a5,.L2169
.L2168:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,433
	lui	a5,%hi(__func__.6471)
	add	a1,a5,%lo(__func__.6471)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC323)
	add	a0,a5,%lo(.LC323)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,17
	sw	a4,12(a5)
	li	a5,3
	j	.L2167
.L2169:
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	lw	a5,-20(s0)
	and	a5,a5,1
	lw	a4,-48(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	call	invokeTCB_ReadRegisters
	mv	a5,a0
.L2167:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeReadRegisters, .-decodeReadRegisters
	.section	.rodata
	.align	2
.LC324:
	.string	"TCB WriteRegisters: Truncated message."
	.align	2
.LC325:
	.string	"TCB WriteRegisters: Message too short for requested write size (%d/%d)."
	.text
	.align	2
	.globl	decodeWriteRegisters
	.type	decodeWriteRegisters, @function
decodeWriteRegisters:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-44(s0)
	li	a5,1
	bgtu	a4,a5,.L2171
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,462
	lui	a5,%hi(__func__.6483)
	add	a1,a5,%lo(__func__.6483)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC324)
	add	a0,a5,%lo(.LC324)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2172
.L2171:
	lw	a1,-48(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-48(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,-44(s0)
	add	a4,a5,-2
	lw	a5,-24(s0)
	bgeu	a4,a5,.L2173
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,472
	lui	a5,%hi(__func__.6483)
	add	a1,a5,%lo(__func__.6483)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-44(s0)
	add	a5,a5,-2
	mv	a4,a5
	lw	a5,-24(s0)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC325)
	add	a0,a5,%lo(.LC325)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2172
.L2173:
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-28(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-32(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-20(s0)
	and	a5,a5,1
	lw	a4,-48(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-32(s0)
	call	invokeTCB_WriteRegisters
	mv	a5,a0
.L2172:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeWriteRegisters, .-decodeWriteRegisters
	.section	.rodata
	.align	2
.LC326:
	.string	"TCB Configure: Truncated message."
	.align	2
.LC327:
	.string	"TCB Configure: Requested priority %d too high (max %d)."
	.align	2
.LC328:
	.string	"TCB Configure: CSpace or VSpace currently being deleted."
	.align	2
.LC329:
	.string	"TCB Configure: CSpace cap is invalid."
	.align	2
.LC330:
	.string	"TCB Configure: VSpace cap is invalid."
	.text
	.align	2
	.globl	decodeTCBConfigure
	.type	decodeTCBConfigure, @function
decodeTCBConfigure:
	add	sp,sp,-176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	add	s0,sp,176
	sw	a0,-104(s0)
	sw	a1,-100(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	mv	s1,a4
	sw	a5,-116(s0)
	lw	a4,-108(s0)
	li	a5,4
	bleu	a4,a5,.L2175
	lw	a5,0(s1)
	beqz	a5,.L2175
	lw	a5,4(s1)
	beqz	a5,.L2175
	lw	a5,8(s1)
	bnez	a5,.L2176
.L2175:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,504
	lui	a5,%hi(__func__.6503)
	add	a1,a5,%lo(__func__.6503)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC326)
	add	a0,a5,%lo(.LC326)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2190
.L2176:
	lw	a1,-116(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-116(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-116(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a1,-116(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-116(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a5,0(s1)
	sw	a5,-44(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-68(s0)
	lw	a5,4(a5)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-76(s0)
	lw	a5,4(a5)
	sw	a5,-72(s0)
	lw	a5,8(s1)
	sw	a5,-20(s0)
	lw	a5,8(s1)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a5,-28(s0)
	and	a5,a5,255
	sw	a5,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,168(a5)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L2178
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,526
	lui	a5,%hi(__func__.6503)
	add	a1,a5,%lo(__func__.6503)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a4,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,168(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC327)
	add	a0,a5,%lo(.LC327)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2190
.L2178:
	lw	a5,-40(s0)
	bnez	a5,.L2179
	sw	zero,-20(s0)
	j	.L2180
.L2179:
	add	a5,s0,-88
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-88(s0)
	beqz	a5,.L2181
	lw	a5,-88(s0)
	j	.L2190
.L2181:
	lw	a5,-84(s0)
	sw	a5,-60(s0)
	lw	a5,-80(s0)
	sw	a5,-56(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-40(s0)
	call	checkValidIPCBuffer
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	beqz	a5,.L2180
	lw	a5,-52(s0)
	j	.L2190
.L2180:
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	bnez	a5,.L2182
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	add	a5,a5,16
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	beqz	a5,.L2183
.L2182:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,551
	lui	a5,%hi(__func__.6503)
	add	a1,a5,%lo(__func__.6503)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC328)
	add	a0,a5,%lo(.LC328)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2190
.L2183:
	lw	a5,-32(s0)
	beqz	a5,.L2184
	lw	a2,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-32(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-68(s0)
	sw	a5,-64(s0)
.L2184:
	add	a5,s0,-144
	lw	a2,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-144(s0)
	sw	a5,-88(s0)
	lw	a5,-140(s0)
	sw	a5,-84(s0)
	lw	a5,-136(s0)
	sw	a5,-80(s0)
	lw	a5,-88(s0)
	beqz	a5,.L2185
	lw	a5,-88(s0)
	j	.L2190
.L2185:
	lw	a5,-84(s0)
	sw	a5,-68(s0)
	lw	a5,-80(s0)
	sw	a5,-64(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2186
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,569
	lui	a5,%hi(__func__.6503)
	add	a1,a5,%lo(__func__.6503)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC329)
	add	a0,a5,%lo(.LC329)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2190
.L2186:
	lw	a5,-36(s0)
	beqz	a5,.L2187
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a1,-36(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-76(s0)
	sw	a5,-72(s0)
.L2187:
	add	a5,s0,-144
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-144(s0)
	sw	a5,-88(s0)
	lw	a5,-140(s0)
	sw	a5,-84(s0)
	lw	a5,-136(s0)
	sw	a5,-80(s0)
	lw	a5,-88(s0)
	beqz	a5,.L2188
	lw	a5,-88(s0)
	j	.L2190
.L2188:
	lw	a5,-84(s0)
	sw	a5,-76(s0)
	lw	a5,-80(s0)
	sw	a5,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isValidVTableRoot
	mv	a5,a0
	bnez	a5,.L2189
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,585
	lui	a5,%hi(__func__.6503)
	add	a1,a5,%lo(__func__.6503)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC330)
	add	a0,a5,%lo(.LC330)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2190
.L2189:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	li	a5,7
	sw	a5,24(sp)
	lw	a5,-20(s0)
	sw	a5,20(sp)
	lw	a5,-60(s0)
	sw	a5,12(sp)
	lw	a5,-56(s0)
	sw	a5,16(sp)
	lw	a5,-40(s0)
	sw	a5,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-72(s0)
	sw	a5,0(sp)
	lw	a7,-76(s0)
	lw	a6,-44(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-112(s0)
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2190:
	mv	a0,a5
	lw	ra,172(sp)
	lw	s0,168(sp)
	lw	s1,164(sp)
	add	sp,sp,176
	jr	ra
	.size	decodeTCBConfigure, .-decodeTCBConfigure
	.section	.rodata
	.align	2
.LC331:
	.string	"TCB SetPriority: Truncated message."
	.align	2
.LC332:
	.string	"TCB SetPriority: Requested priority %d too high (max %d)."
	.text
	.align	2
	.globl	decodeSetPriority
	.type	decodeSetPriority, @function
decodeSetPriority:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	lw	a5,-60(s0)
	bnez	a5,.L2192
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,606
	lui	a5,%hi(__func__.6511)
	add	a1,a5,%lo(__func__.6511)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC331)
	add	a0,a5,%lo(.LC331)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2193
.L2192:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,255
	sw	a5,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,168(a5)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L2194
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,618
	lui	a5,%hi(__func__.6511)
	add	a1,a5,%lo(__func__.6511)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a4,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,168(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC332)
	add	a0,a5,%lo(.LC332)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2193
.L2194:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,24(sp)
	sw	zero,20(sp)
	lw	a5,-28(s0)
	sw	a5,12(sp)
	lw	a5,-24(s0)
	sw	a5,16(sp)
	sw	zero,8(sp)
	sw	zero,4(sp)
	lw	a5,-32(s0)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	mv	a6,zero
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	lw	a3,-20(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2193:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	decodeSetPriority, .-decodeSetPriority
	.section	.rodata
	.align	2
.LC333:
	.string	"TCB SetIPCBuffer: Truncated message."
	.text
	.align	2
	.globl	decodeSetIPCBuffer
	.type	decodeSetIPCBuffer, @function
decodeSetIPCBuffer:
	add	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	add	s0,sp,128
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	mv	s1,a4
	sw	a5,-84(s0)
	lw	a5,-76(s0)
	beqz	a5,.L2196
	lw	a5,0(s1)
	bnez	a5,.L2197
.L2196:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,642
	lui	a5,%hi(__func__.6522)
	add	a1,a5,%lo(__func__.6522)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC333)
	add	a0,a5,%lo(.LC333)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2204
.L2197:
	lw	a1,-84(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,0(s1)
	sw	a5,-20(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-52(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a5,-24(s0)
	bnez	a5,.L2199
	sw	zero,-20(s0)
	j	.L2200
.L2199:
	add	a5,s0,-64
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-64(s0)
	beqz	a5,.L2201
	lw	a5,-64(s0)
	j	.L2204
.L2201:
	lw	a5,-60(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	sw	a5,-48(s0)
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-24(s0)
	call	checkValidIPCBuffer
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L2200
	lw	a5,-28(s0)
	j	.L2204
.L2200:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	li	a5,2
	sw	a5,24(sp)
	lw	a5,-20(s0)
	sw	a5,20(sp)
	lw	a5,-52(s0)
	sw	a5,12(sp)
	lw	a5,-48(s0)
	sw	a5,16(sp)
	lw	a5,-24(s0)
	sw	a5,8(sp)
	sw	zero,4(sp)
	lw	a5,-32(s0)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	mv	a6,zero
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-80(s0)
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2204:
	mv	a0,a5
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	add	sp,sp,128
	jr	ra
	.size	decodeSetIPCBuffer, .-decodeSetIPCBuffer
	.section	.rodata
	.align	2
.LC334:
	.string	"TCB SetSpace: Truncated message."
	.align	2
.LC335:
	.string	"TCB SetSpace: CSpace or VSpace currently being deleted."
	.align	2
.LC336:
	.string	"TCB SetSpace: Invalid CNode cap."
	.align	2
.LC337:
	.string	"TCB SetSpace: Invalid VSpace cap."
	.text
	.align	2
	.globl	decodeSetSpace
	.type	decodeSetSpace, @function
decodeSetSpace:
	add	sp,sp,-160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	add	s0,sp,160
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	mv	s1,a4
	sw	a5,-100(s0)
	lw	a4,-92(s0)
	li	a5,2
	bleu	a4,a5,.L2206
	lw	a5,0(s1)
	beqz	a5,.L2206
	lw	a5,4(s1)
	bnez	a5,.L2207
.L2206:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,691
	lui	a5,%hi(__func__.6540)
	add	a1,a5,%lo(__func__.6540)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC334)
	add	a0,a5,%lo(.LC334)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2217
.L2207:
	lw	a1,-100(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-100(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-100(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a5,0(s1)
	sw	a5,-32(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-52(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	sw	a5,-36(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	bnez	a5,.L2209
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	add	a5,a5,16
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	beqz	a5,.L2210
.L2209:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,709
	lui	a5,%hi(__func__.6540)
	add	a1,a5,%lo(__func__.6540)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC335)
	add	a0,a5,%lo(.LC335)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2217
.L2210:
	lw	a5,-24(s0)
	beqz	a5,.L2211
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-24(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
.L2211:
	add	a5,s0,-72
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-72(s0)
	beqz	a5,.L2212
	lw	a5,-72(s0)
	j	.L2217
.L2212:
	lw	a5,-68(s0)
	sw	a5,-52(s0)
	lw	a5,-64(s0)
	sw	a5,-48(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2213
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,727
	lui	a5,%hi(__func__.6540)
	add	a1,a5,%lo(__func__.6540)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC336)
	add	a0,a5,%lo(.LC336)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2217
.L2213:
	lw	a5,-28(s0)
	beqz	a5,.L2214
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-28(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
.L2214:
	add	a5,s0,-128
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-128(s0)
	sw	a5,-72(s0)
	lw	a5,-124(s0)
	sw	a5,-68(s0)
	lw	a5,-120(s0)
	sw	a5,-64(s0)
	lw	a5,-72(s0)
	beqz	a5,.L2215
	lw	a5,-72(s0)
	j	.L2217
.L2215:
	lw	a5,-68(s0)
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	sw	a5,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	isValidVTableRoot
	mv	a5,a0
	bnez	a5,.L2216
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,743
	lui	a5,%hi(__func__.6540)
	add	a1,a5,%lo(__func__.6540)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC337)
	add	a0,a5,%lo(.LC337)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2217
.L2216:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	li	a5,4
	sw	a5,24(sp)
	sw	zero,20(sp)
	lw	a5,-44(s0)
	sw	a5,12(sp)
	lw	a5,-40(s0)
	sw	a5,16(sp)
	sw	zero,8(sp)
	lw	a5,-36(s0)
	sw	a5,4(sp)
	lw	a5,-56(s0)
	sw	a5,0(sp)
	lw	a7,-60(s0)
	lw	a6,-32(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	mv	a3,zero
	lw	a2,-20(s0)
	lw	a1,-96(s0)
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2217:
	mv	a0,a5
	lw	ra,156(sp)
	lw	s0,152(sp)
	lw	s1,148(sp)
	add	sp,sp,160
	jr	ra
	.size	decodeSetSpace, .-decodeSetSpace
	.section	.rodata
	.align	2
.LC338:
	.string	"Domain Configure: Truncated message."
	.align	2
.LC339:
	.string	"Domain Configure: invalid domain (%u >= %u)."
	.align	2
.LC340:
	.string	"Domain Configure: thread cap required."
	.text
	.align	2
	.globl	decodeDomainInvocation
	.type	decodeDomainInvocation, @function
decodeDomainInvocation:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	s1,a2
	sw	a3,-44(s0)
	lw	a5,-36(s0)
	add	a5,a5,-29
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2219
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2225
.L2219:
	lw	a5,-40(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2221
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,770
	lui	a5,%hi(__func__.6549)
	add	a1,a5,%lo(__func__.6549)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC338)
	add	a0,a5,%lo(.LC338)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2225
.L2221:
	lw	a1,-44(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L2222
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,777
	lui	a5,%hi(__func__.6549)
	add	a1,a5,%lo(__func__.6549)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	li	a2,1
	lw	a1,-20(s0)
	lui	a5,%hi(.LC339)
	add	a0,a5,%lo(.LC339)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2225
.L2222:
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2223
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,785
	lui	a5,%hi(__func__.6549)
	add	a1,a5,%lo(__func__.6549)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC338)
	add	a0,a5,%lo(.LC338)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2225
.L2223:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-28(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-12
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2224
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,792
	lui	a5,%hi(__func__.6549)
	add	a1,a5,%lo(__func__.6549)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC340)
	add	a0,a5,%lo(.LC340)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2225
.L2224:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	lw	a1,-20(s0)
	mv	a0,a5
	call	setDomain
	mv	a5,zero
.L2225:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeDomainInvocation, .-decodeDomainInvocation
	.section	.rodata
	.align	2
.LC341:
	.string	"TCB BindAEP: Truncated message."
	.align	2
.LC342:
	.string	"TCB BindAEP: Async endpoint is invalid."
	.align	2
.LC343:
	.string	"TCB BindAEP: TCB already has AEP."
	.align	2
.LC344:
	.string	"TCB BindAEP: AEP cannot be bound."
	.text
	.align	2
	.globl	decodeBindAEP
	.type	decodeBindAEP, @function
decodeBindAEP:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	mv	s1,a2
	lw	a5,0(s1)
	bnez	a5,.L2227
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,809
	lui	a5,%hi(__func__.6556)
	add	a1,a5,%lo(__func__.6556)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC341)
	add	a0,a5,%lo(.LC341)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2228
.L2227:
	lw	a5,0(s1)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	beq	a4,a5,.L2229
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,815
	lui	a5,%hi(__func__.6556)
	add	a1,a5,%lo(__func__.6556)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC342)
	add	a0,a5,%lo(.LC342)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2228
.L2229:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,144(a5)
	beqz	a5,.L2230
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,823
	lui	a5,%hi(__func__.6556)
	add	a1,a5,%lo(__func__.6556)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC343)
	add	a0,a5,%lo(.LC343)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2228
.L2230:
	lw	a5,0(s1)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	beqz	a5,.L2231
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,830
	lui	a5,%hi(__func__.6556)
	add	a1,a5,%lo(__func__.6556)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC344)
	add	a0,a5,%lo(.LC344)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2228
.L2231:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	invokeTCB_AEPControl
	mv	a5,a0
.L2228:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeBindAEP, .-decodeBindAEP
	.section	.rodata
	.align	2
.LC345:
	.string	"TCB UnbindAEP: TCB already has no bound AEP."
	.text
	.align	2
	.globl	decodeUnbindAEP
	.type	decodeUnbindAEP, @function
decodeUnbindAEP:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,144(a5)
	bnez	a5,.L2233
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,846
	lui	a5,%hi(__func__.6561)
	add	a1,a5,%lo(__func__.6561)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC345)
	add	a0,a5,%lo(.LC345)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2234
.L2233:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	mv	a1,zero
	lw	a0,-20(s0)
	call	invokeTCB_AEPControl
	mv	a5,a0
.L2234:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeUnbindAEP, .-decodeUnbindAEP
	.align	2
	.globl	invokeTCB_Suspend
	.type	invokeTCB_Suspend, @function
invokeTCB_Suspend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	suspend
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_Suspend, .-invokeTCB_Suspend
	.align	2
	.globl	invokeTCB_Resume
	.type	invokeTCB_Resume, @function
invokeTCB_Resume:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	restart
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_Resume, .-invokeTCB_Resume
	.align	2
	.globl	invokeTCB_ThreadControl
	.type	invokeTCB_ThreadControl, @function
invokeTCB_ThreadControl:
	add	sp,sp,-96
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	sw	a6,-76(s0)
	sw	a7,12(s0)
	lw	a5,-52(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2240
	lw	a5,-52(s0)
	lw	a4,-60(s0)
	sw	a4,176(a5)
.L2240:
	lw	a5,40(s0)
	and	a5,a5,1
	beqz	a5,.L2241
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	setPriority
.L2241:
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2242
	lw	a5,-52(s0)
	and	a5,a5,-512
	sw	a5,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2243
	lw	a5,-24(s0)
	j	.L2249
.L2243:
	lw	a5,-76(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2242
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2242
	lw	a3,-20(s0)
	lw	a2,-76(s0)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	cteInsert
.L2242:
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2245
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,16
	sw	a5,-28(s0)
	li	a1,1
	lw	a0,-28(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2246
	lw	a5,-24(s0)
	j	.L2249
.L2246:
	lw	a5,20(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,12(s0)
	lw	a1,16(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2245
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2245
	lw	a3,-28(s0)
	lw	a2,20(s0)
	lw	a0,12(s0)
	lw	a1,16(s0)
	call	cteInsert
.L2245:
	lw	a5,40(s0)
	and	a5,a5,2
	beqz	a5,.L2247
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,64
	sw	a5,-32(s0)
	li	a1,1
	lw	a0,-32(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2248
	lw	a5,-24(s0)
	j	.L2249
.L2248:
	lw	a5,-52(s0)
	lw	a4,24(s0)
	sw	a4,180(a5)
	lw	a5,36(s0)
	beqz	a5,.L2247
	lw	a5,36(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,28(s0)
	lw	a1,32(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2247
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2247
	lw	a3,-32(s0)
	lw	a2,36(s0)
	lw	a0,28(s0)
	lw	a1,32(s0)
	call	cteInsert
.L2247:
	mv	a5,zero
.L2249:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,96
	jr	ra
	.size	invokeTCB_ThreadControl, .-invokeTCB_ThreadControl
	.align	2
	.globl	invokeTCB_CopyRegisters
	.type	invokeTCB_CopyRegisters, @function
invokeTCB_CopyRegisters:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2251
	lw	a0,-56(s0)
	call	suspend
.L2251:
	lw	a5,-64(s0)
	beqz	a5,.L2252
	lw	a0,-52(s0)
	call	restart
.L2252:
	lw	a5,-68(s0)
	beqz	a5,.L2253
	sw	zero,-20(s0)
	j	.L2254
.L2255:
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-56(s0)
	call	getRegister
	sw	a0,-28(s0)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2254:
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L2255
	lw	a0,-52(s0)
	call	getRestartPC
	sw	a0,-32(s0)
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	setNextPC
.L2253:
	lw	a5,-72(s0)
	beqz	a5,.L2256
	sw	zero,-24(s0)
	j	.L2257
.L2258:
	lui	a5,%hi(gpRegisters)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-56(s0)
	call	getRegister
	sw	a0,-36(s0)
	lui	a5,%hi(gpRegisters)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	setRegister
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L2257:
	lw	a4,-24(s0)
	li	a5,6
	bleu	a4,a5,.L2258
.L2256:
	lw	a2,-52(s0)
	lw	a1,-56(s0)
	lw	a0,-76(s0)
	call	Arch_performTransfer
	mv	a5,a0
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeTCB_CopyRegisters, .-invokeTCB_CopyRegisters
	.align	2
	.globl	invokeTCB_ReadRegisters
	.type	invokeTCB_ReadRegisters, @function
invokeTCB_ReadRegisters:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	sw	a5,-24(s0)
	lw	a5,-56(s0)
	beqz	a5,.L2261
	lw	a0,-52(s0)
	call	suspend
.L2261:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a2,a5
	lw	a1,-52(s0)
	lw	a0,-64(s0)
	call	Arch_performTransfer
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L2262
	lw	a5,-28(s0)
	j	.L2263
.L2262:
	lw	a5,-68(s0)
	beqz	a5,.L2264
	lw	a1,-24(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-32(s0)
	mv	a2,zero
	li	a1,10
	lw	a0,-24(s0)
	call	setRegister
	sw	zero,-20(s0)
	j	.L2265
.L2267:
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-24(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2265:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2266
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2266
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L2267
.L2266:
	lw	a5,-32(s0)
	beqz	a5,.L2268
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2268
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2268
	j	.L2269
.L2270:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-32(s0)
	add	s1,a4,a5
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2269:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2268
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L2270
.L2268:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	sw	zero,-20(s0)
	j	.L2271
.L2273:
	lw	a5,-20(s0)
	add	a4,a5,10
	lui	a5,%hi(msgRegisters)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-24(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2271:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2272
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2272
	lw	a5,-20(s0)
	add	a4,a5,10
	li	a5,3
	bleu	a4,a5,.L2273
.L2272:
	lw	a5,-32(s0)
	beqz	a5,.L2274
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2274
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2274
	j	.L2275
.L2276:
	lw	a5,-20(s0)
	add	a5,a5,11
	sll	a5,a5,2
	lw	a4,-32(s0)
	add	s1,a4,a5
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2275:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2274
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bltu	a4,a5,.L2276
.L2274:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	mv	a3,a5
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,11
	lw	a0,-24(s0)
	call	setRegister
.L2264:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	mv	a5,zero
.L2263:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeTCB_ReadRegisters, .-invokeTCB_ReadRegisters
	.align	2
	.globl	invokeTCB_WriteRegisters
	.type	invokeTCB_WriteRegisters, @function
invokeTCB_WriteRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-48(s0)
	call	Arch_performTransfer
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2278
	lw	a5,-24(s0)
	j	.L2279
.L2278:
	lw	a4,-44(s0)
	li	a5,17
	bleu	a4,a5,.L2280
	li	a5,17
	sw	a5,-44(s0)
.L2280:
	sw	zero,-20(s0)
	j	.L2281
.L2283:
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	s2,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,2
	lw	a1,-52(s0)
	mv	a0,a5
	call	getSyscallArg
	mv	a5,a0
	mv	a1,a5
	mv	a0,s2
	call	sanitiseRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2281:
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2282
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L2283
.L2282:
	sw	zero,-20(s0)
	j	.L2284
.L2286:
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	s2,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,12
	lw	a1,-52(s0)
	mv	a0,a5
	call	getSyscallArg
	mv	a5,a0
	mv	a1,a5
	mv	a0,s2
	call	sanitiseRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2284:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2285
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-44(s0)
	bltu	a4,a5,.L2286
.L2285:
	lw	a0,-36(s0)
	call	getRestartPC
	sw	a0,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	setNextPC
	lw	a5,-40(s0)
	beqz	a5,.L2287
	lw	a0,-36(s0)
	call	restart
.L2287:
	mv	a5,zero
.L2279:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	add	sp,sp,64
	jr	ra
	.size	invokeTCB_WriteRegisters, .-invokeTCB_WriteRegisters
	.align	2
	.globl	invokeTCB_AEPControl
	.type	invokeTCB_AEPControl, @function
invokeTCB_AEPControl:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2289
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bindAsyncEndpoint
	j	.L2290
.L2289:
	lw	a0,-20(s0)
	call	unbindAsyncEndpoint
.L2290:
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_AEPControl, .-invokeTCB_AEPControl
	.align	2
	.type	alignUp, @function
alignUp:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,1
	lw	a5,-24(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a4,a5,-1
	li	a3,1
	lw	a5,-24(s0)
	sll	a5,a3,a5
	sub	a5,zero,a5
	and	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	alignUp, .-alignUp
	.section	.rodata
	.align	2
.LC346:
	.string	"Untyped cap: Illegal operation attempted."
	.align	2
.LC347:
	.string	"Untyped invocation: Truncated message."
	.align	2
.LC348:
	.string	"Untyped Retype: Untyped outside kernel window (%p)."
	.align	2
.LC349:
	.string	"Untyped Retype: Invalid object type."
	.align	2
.LC350:
	.string	"Untyped Retype: Invalid object size."
	.align	2
.LC351:
	.string	"Untyped Retype: Requested CapTable size too small."
	.align	2
.LC352:
	.string	"Untyped Retype: Requested UntypedItem size too small."
	.align	2
.LC353:
	.string	"Untyped Retype: Invalid destination address."
	.align	2
.LC354:
	.string	"Untyped Retype: Destination cap invalid or read-only."
	.align	2
.LC355:
	.string	"Untyped Retype: Destination node offset #%d too large."
	.align	2
.LC356:
	.string	"Untyped Retype: Number of requested objects (%d) too small or large."
	.align	2
.LC357:
	.string	"Untyped Retype: Requested destination window overruns size of node."
	.align	2
.LC358:
	.string	"Untyped Retype: Slot #%d in destination window non-empty."
	.align	2
.LC359:
	.string	"Untyped Retype: Insufficient memory or offset outside untyped"
	.align	2
.LC360:
	.string	"Untyped Retype: collision with existing child"
	.align	2
.LC361:
	.string	"Untyped Retype: Creating kernel objects with frame only untyped"
	.text
	.align	2
	.globl	decodeUntypedInvocation
	.type	decodeUntypedInvocation, @function
decodeUntypedInvocation:
	add	sp,sp,-176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	add	s0,sp,176
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-148(s0)
	sw	a4,-144(s0)
	mv	s1,a5
	sw	a6,-152(s0)
	sw	a7,-156(s0)
	lw	a4,-132(s0)
	li	a5,1
	beq	a4,a5,.L2295
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,50
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC346)
	add	a0,a5,%lo(.LC346)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2319
.L2295:
	lw	a4,-136(s0)
	li	a5,6
	bleu	a4,a5,.L2297
	lw	a5,0(s1)
	bnez	a5,.L2298
.L2297:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,57
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC347)
	add	a0,a5,%lo(.LC347)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2319
.L2298:
	lw	a1,-156(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-156(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-156(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a1,-156(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-156(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a1,-156(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-44(s0)
	lw	a1,-156(s0)
	li	a0,6
	call	getSyscallArg
	sw	a0,-48(s0)
	lw	a5,0(s1)
	sw	a5,-52(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	mv	a0,a5
	call	inKernelWindow
	mv	a5,a0
	bnez	a5,.L2299
	lw	a0,-24(s0)
	call	Arch_isFrameType
	mv	a5,a0
	bnez	a5,.L2299
	lw	a5,-24(s0)
	beqz	a5,.L2299
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,82
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC348)
	add	a0,a5,%lo(.LC348)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2319
.L2299:
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L2300
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,90
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC349)
	add	a0,a5,%lo(.LC349)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2319
.L2300:
	lw	a4,-32(s0)
	li	a5,30
	bleu	a4,a5,.L2301
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,98
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC350)
	add	a0,a5,%lo(.LC350)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,30
	sw	a4,12(a5)
	li	a5,3
	j	.L2319
.L2301:
	lw	a4,-24(s0)
	li	a5,4
	bne	a4,a5,.L2302
	lw	a5,-32(s0)
	bnez	a5,.L2302
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,107
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC351)
	add	a0,a5,%lo(.LC351)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2319
.L2302:
	lw	a5,-24(s0)
	bnez	a5,.L2303
	lw	a4,-32(s0)
	li	a5,3
	bgtu	a4,a5,.L2303
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,115
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC352)
	add	a0,a5,%lo(.LC352)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2319
.L2303:
	lw	a5,-40(s0)
	bnez	a5,.L2304
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-88(s0)
	lw	a5,4(a5)
	sw	a5,-84(s0)
	j	.L2305
.L2304:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-116(s0)
	lw	a5,4(a5)
	sw	a5,-112(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	beqz	a5,.L2306
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,128
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC353)
	add	a0,a5,%lo(.LC353)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-96(s0)
	j	.L2319
.L2306:
	lw	a5,-92(s0)
	lw	a4,0(a5)
	sw	a4,-88(s0)
	lw	a5,4(a5)
	sw	a5,-84(s0)
.L2305:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2307
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,136
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC354)
	add	a0,a5,%lo(.LC354)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,20(a5)
	lw	a0,-40(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L2319
.L2307:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	add	a4,a5,-1
	lw	a5,-44(s0)
	bgeu	a4,a5,.L2308
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,147
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-44(s0)
	mv	a1,a5
	lui	a5,%hi(.LC355)
	add	a0,a5,%lo(.LC355)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lw	a5,-56(s0)
	add	a4,a5,-1
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	a4,12(a5)
	li	a5,3
	j	.L2319
.L2308:
	lw	a5,-48(s0)
	beqz	a5,.L2309
	lw	a4,-48(s0)
	li	a5,256
	bleu	a4,a5,.L2310
.L2309:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,155
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-48(s0)
	mv	a1,a5
	lui	a5,%hi(.LC356)
	add	a0,a5,%lo(.LC356)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,256
	sw	a4,12(a5)
	li	a5,3
	j	.L2319
.L2310:
	lw	a4,-56(s0)
	lw	a5,-44(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	bgeu	a4,a5,.L2311
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,162
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC357)
	add	a0,a5,%lo(.LC357)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lw	a4,-56(s0)
	lw	a5,-44(s0)
	sub	a4,a4,a5
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	a4,12(a5)
	li	a5,3
	j	.L2319
.L2311:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	sw	a5,-108(s0)
	lw	a5,-44(s0)
	sw	a5,-104(s0)
	lw	a5,-48(s0)
	sw	a5,-100(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	j	.L2312
.L2314:
	lw	a4,-108(s0)
	lw	a5,-20(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	mv	a0,a5
	call	ensureEmptySlot
	sw	a0,-60(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2313
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,177
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC358)
	add	a0,a5,%lo(.LC358)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lw	a5,-60(s0)
	j	.L2319
.L2313:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2312:
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L2314
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	getObjectSize
	sw	a0,-64(s0)
	lw	a1,-64(s0)
	lw	a0,-28(s0)
	call	alignUp
	sw	a0,-68(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a4,a0
	lw	a5,-68(s0)
	add	a5,a4,a5
	sw	a5,-72(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	sw	a5,-76(s0)
	lw	a4,-64(s0)
	li	a5,31
	bgtu	a4,a5,.L2315
	li	a4,1
	lw	a5,-64(s0)
	sll	a4,a4,a5
	lw	a5,-68(s0)
	add	a4,a4,a5
	lw	a5,-76(s0)
	bleu	a4,a5,.L2316
.L2315:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,193
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC359)
	add	a0,a5,%lo(.LC359)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,10
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-76(s0)
	sw	a4,16(a5)
	li	a5,3
	j	.L2319
.L2316:
	lw	a5,-24(s0)
	beqz	a5,.L2317
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a5,a0
	bnez	a5,.L2317
	lw	a4,-48(s0)
	lw	a5,-64(s0)
	sll	a5,a4,a5
	mv	a2,a5
	lw	a1,-72(s0)
	li	a0,1
	call	cdtFindInRange
	sw	a0,-80(s0)
	lw	a5,-80(s0)
	beqz	a5,.L2317
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,203
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC360)
	add	a0,a5,%lo(.LC360)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,9
	sw	a4,24(a5)
	li	a5,3
	j	.L2319
.L2317:
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a5,a0
	beqz	a5,.L2318
	lw	a0,-24(s0)
	call	Arch_isFrameType
	mv	a5,a0
	bnez	a5,.L2318
	lw	a5,-24(s0)
	beqz	a5,.L2318
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,212
	lui	a5,%hi(__func__.6682)
	add	a1,a5,%lo(__func__.6682)
	lui	a5,%hi(.LC107)
	add	a0,a5,%lo(.LC107)
	call	printf
	lui	a5,%hi(.LC361)
	add	a0,a5,%lo(.LC361)
	call	printf
	lui	a5,%hi(.LC109)
	add	a0,a5,%lo(.LC109)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2319
.L2318:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	mv	s2,a5
	lw	s1,-72(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a4,a0
	lw	a5,-108(s0)
	sw	a5,-176(s0)
	lw	a5,-104(s0)
	sw	a5,-172(s0)
	lw	a5,-100(s0)
	sw	a5,-168(s0)
	add	a5,s0,-176
	mv	a7,a4
	lw	a6,-152(s0)
	lw	a4,-32(s0)
	lw	a3,-24(s0)
	mv	a2,s1
	mv	a1,s2
	lw	a0,-140(s0)
	call	invokeUntyped_Retype
	mv	a5,a0
.L2319:
	mv	a0,a5
	lw	ra,172(sp)
	lw	s0,168(sp)
	lw	s1,164(sp)
	lw	s2,160(sp)
	add	sp,sp,176
	jr	ra
	.size	decodeUntypedInvocation, .-decodeUntypedInvocation
	.align	2
	.globl	invokeUntyped_Retype
	.type	invokeUntyped_Retype, @function
invokeUntyped_Retype:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	mv	s1,a5
	sw	a6,-56(s0)
	sw	a7,-60(s0)
	lw	a5,-36(s0)
	mv	a0,a5
	call	cap_untyped_cap_ptr_get_capBlockSize
	sw	a0,-20(s0)
	lw	a5,0(s1)
	sw	a5,-80(s0)
	lw	a5,4(s1)
	sw	a5,-76(s0)
	lw	a5,8(s1)
	sw	a5,-72(s0)
	add	a2,s0,-80
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	lw	a3,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-48(s0)
	call	createNewObjects
	mv	a5,zero
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeUntyped_Retype, .-invokeUntyped_Retype
	.globl	avail_p_regs
	.section	.boot.rodata,"a",@progbits
	.align	2
	.type	avail_p_regs, @object
	.size	avail_p_regs, 8
avail_p_regs:
	.word	16777216
	.word	285212672
	.section	.boot.text
	.align	2
	.globl	get_num_avail_p_regs
	.type	get_num_avail_p_regs, @function
get_num_avail_p_regs:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	li	a5,1
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	get_num_avail_p_regs, .-get_num_avail_p_regs
	.align	2
	.globl	get_avail_p_reg
	.type	get_avail_p_reg, @function
get_avail_p_reg:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(avail_p_regs)
	lw	a4,-36(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(avail_p_regs)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	get_avail_p_reg, .-get_avail_p_reg
	.align	2
	.globl	get_num_dev_p_regs
	.type	get_num_dev_p_regs, @function
get_num_dev_p_regs:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	mv	a5,zero
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	get_num_dev_p_regs, .-get_num_dev_p_regs
	.align	2
	.globl	get_dev_p_reg
	.type	get_dev_p_reg, @function
get_dev_p_reg:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	get_dev_p_reg, .-get_dev_p_reg
	.text
	.align	2
	.globl	getActiveIRQ
	.type	getActiveIRQ, @function
getActiveIRQ:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-20(s0)
 #APP
# 57 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/spike/machine/hardware.c" 1
	csrr a5, scause
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bltz	a5,.L2330
	li	a5,3
	j	.L2331
.L2330:
	lw	a5,-20(s0)
	and	a5,a5,15
.L2331:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getActiveIRQ, .-getActiveIRQ
	.section	.rodata
	.align	2
.LC362:
	.string	"isIRQPending "
	.text
	.align	2
	.globl	isIRQPending
	.type	isIRQPending, @function
isIRQPending:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(.LC362)
	add	a0,a5,%lo(.LC362)
	call	puts
	nop
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	isIRQPending, .-isIRQPending
	.align	2
	.globl	maskInterrupt
	.type	maskInterrupt, @function
maskInterrupt:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	maskInterrupt, .-maskInterrupt
	.section	.rodata
	.align	2
.LC363:
	.string	"isReservedIRQ "
	.text
	.align	2
	.globl	isReservedIRQ
	.type	isReservedIRQ, @function
isReservedIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC363)
	add	a0,a5,%lo(.LC363)
	call	puts
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	isReservedIRQ, .-isReservedIRQ
	.section	.rodata
	.align	2
.LC364:
	.string	"handleReservedIRQ "
	.text
	.align	2
	.globl	handleReservedIRQ
	.type	handleReservedIRQ, @function
handleReservedIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(.LC364)
	add	a0,a5,%lo(.LC364)
	call	puts
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleReservedIRQ, .-handleReservedIRQ
	.align	2
	.globl	ackInterrupt
	.type	ackInterrupt, @function
ackInterrupt:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	ackInterrupt, .-ackInterrupt
	.align	2
	.globl	resetTimer
	.type	resetTimer, @function
resetTimer:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	resetTimer, .-resetTimer
	.section	.boot.text
	.align	2
	.globl	initTimer
	.type	initTimer, @function
initTimer:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	initTimer, .-initTimer
	.text
	.align	2
	.type	invalidateL2, @function
invalidateL2:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	invalidateL2, .-invalidateL2
	.align	2
	.type	finaliseL2Op, @function
finaliseL2Op:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	finaliseL2Op, .-finaliseL2Op
	.align	2
	.globl	plat_cleanL2Range
	.type	plat_cleanL2Range, @function
plat_cleanL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_cleanL2Range, .-plat_cleanL2Range
	.align	2
	.globl	plat_invalidateL2Range
	.type	plat_invalidateL2Range, @function
plat_invalidateL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_invalidateL2Range, .-plat_invalidateL2Range
	.align	2
	.globl	plat_cleanInvalidateL2Range
	.type	plat_cleanInvalidateL2Range, @function
plat_cleanInvalidateL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_cleanInvalidateL2Range, .-plat_cleanInvalidateL2Range
	.section	.boot.text
	.align	2
	.globl	initL2Cache
	.type	initL2Cache, @function
initL2Cache:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	initL2Cache, .-initL2Cache
	.section	.rodata
	.align	2
.LC365:
	.string	"Init IRQ!! "
	.section	.boot.text
	.align	2
	.globl	initIRQController
	.type	initIRQController, @function
initIRQController:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(.LC365)
	add	a0,a5,%lo(.LC365)
	call	puts
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	initIRQController, .-initIRQController
	.section	.rodata
	.align	2
.LC366:
	.string	"Superior IRQ!! "
	.text
	.align	2
	.globl	handleSpuriousIRQ
	.type	handleSpuriousIRQ, @function
handleSpuriousIRQ:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(.LC366)
	add	a0,a5,%lo(.LC366)
	call	puts
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	handleSpuriousIRQ, .-handleSpuriousIRQ
	.align	2
	.type	uart_write_polled, @function
uart_write_polled:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	mv	a5,a0
	sb	a5,-33(s0)
	li	a5,96
	sw	a5,-20(s0)
.L2349:
	li	a5,1021
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a5,-21(s0)
	and	a5,a5,32
	beqz	a5,.L2349
	li	a5,1016
	lbu	a4,-33(s0)
	sb	a4,0(a5)
.L2350:
	li	a5,1021
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a4,-21(s0)
	lw	a5,-20(s0)
	and	a4,a4,a5
	lw	a5,-20(s0)
	bne	a4,a5,.L2350
	nop
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	uart_write_polled, .-uart_write_polled
	.comm	magic_mem,64,64
	.align	2
	.type	syscall, @function
syscall:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a7,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-28(s0)
	lw	a2,-32(s0)
 #APP
# 114 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/spike/machine/io.c" 1
	ecall
# 0 "" 2
 #NO_APP
	mv	a5,a0
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	syscall, .-syscall
	.align	2
	.globl	halt
	.type	halt, @function
halt:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	li	a0,93
	call	syscall
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	halt, .-halt
	.section	.boot.text
	.align	2
	.globl	tohost_exit
	.type	tohost_exit, @function
tohost_exit:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,1
	or	a5,a5,1
 #APP
# 125 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/spike/machine/io.c" 1
	csrw mtohost, a5
# 0 "" 2
 #NO_APP
.L2355:
	j	.L2355
	.size	tohost_exit, .-tohost_exit
	.align	2
	.type	handle_frontend_syscall, @function
handle_frontend_syscall:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a3,-36(s0)
	mv	t5,a3
	sra	a3,a3,31
	mv	t6,a3
	lui	a3,%hi(magic_mem)
	sw	t5,%lo(magic_mem)(a3)
	sw	t6,%lo(magic_mem+4)(a3)
	lw	a3,-40(s0)
	mv	t3,a3
	sra	a3,a3,31
	mv	t4,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	t3,8(a3)
	sw	t4,12(a3)
	lw	a3,-44(s0)
	mv	a6,a3
	sra	a3,a3,31
	mv	a7,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	a6,16(a3)
	sw	a7,20(a3)
	lw	a3,-48(s0)
	mv	a4,a3
	sra	a3,a3,31
	mv	a5,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	a4,24(a3)
	sw	a5,28(a3)
	fence rw,rw
	lui	a5,%hi(magic_mem)
	add	a5,a5,%lo(magic_mem)
 #APP
# 136 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/spike/machine/io.c" 1
	csrw mtohost, a5
# 0 "" 2
 #NO_APP
	nop
.L2357:
	mv	a5,zero
 #APP
# 137 "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/spike/machine/io.c" 1
	csrrw a5, mfromhost, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L2357
	lui	a5,%hi(magic_mem)
	lw	a4,%lo(magic_mem)(a5)
	lw	a5,%lo(magic_mem+4)(a5)
	mv	a5,a4
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	handle_frontend_syscall, .-handle_frontend_syscall
	.section	.rodata
	.align	2
.LC367:
	.string	"EXCEPTION: store fault epc = %x! \n"
	.section	.boot.text
	.align	2
	.globl	handle_trap
	.type	handle_trap, @function
handle_trap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,7
	bne	a4,a5,.L2360
	lw	a1,-40(s0)
	lui	a5,%hi(.LC367)
	add	a0,a5,%lo(.LC367)
	call	printf
	call	halt
.L2360:
	lw	a5,-44(s0)
	add	a5,a5,136
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a3,93
	bne	a4,a3,.L2361
	bnez	a5,.L2361
	lw	a5,-44(s0)
	add	a5,a5,80
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a5,a4
	mv	a0,a5
	call	tohost_exit
	j	.L2362
.L2361:
	lw	a5,-44(s0)
	add	a5,a5,136
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a0,a4
	lw	a5,-44(s0)
	add	a5,a5,80
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a1,a4
	lw	a5,-44(s0)
	add	a5,a5,88
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a2,a4
	lw	a5,-44(s0)
	add	a5,a5,96
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a5,a4
	mv	a3,a5
	call	handle_frontend_syscall
	sw	a0,-20(s0)
.L2362:
	lw	a5,-44(s0)
	add	a4,a5,80
	lw	a5,-20(s0)
	mv	s2,a5
	sra	a5,a5,31
	mv	s3,a5
	sw	s2,0(a4)
	sw	s3,4(a4)
	lw	a5,-40(s0)
	add	a5,a5,4
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	handle_trap, .-handle_trap
	.text
	.align	2
	.type	strlen, @function
strlen:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L2365
.L2366:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2365:
	lw	a5,-36(s0)
	add	a4,a5,1
	sw	a4,-36(s0)
	lbu	a5,0(a5)
	bnez	a5,.L2366
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	strlen, .-strlen
	.align	2
	.globl	printstr
	.type	printstr, @function
printstr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	s1,-20(s0)
	lw	a0,-20(s0)
	call	strlen
	mv	a5,a0
	mv	a3,a5
	mv	a2,s1
	li	a1,1
	li	a0,64
	call	syscall
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	printstr, .-printstr
	.local	buf
	.comm	buf,64,64
	.local	buflen
	.comm	buflen,4,4
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(buflen)
	lw	a5,%lo(buflen)(a5)
	add	a3,a5,1
	lui	a4,%hi(buflen)
	sw	a3,%lo(buflen)(a4)
	lw	a4,-20(s0)
	and	a4,a4,0xff
	lui	a3,%hi(buf)
	add	a3,a3,%lo(buf)
	add	a5,a5,a3
	sb	a4,0(a5)
	lw	a4,-20(s0)
	li	a5,10
	beq	a4,a5,.L2370
	lui	a5,%hi(buflen)
	lw	a4,%lo(buflen)(a5)
	li	a5,64
	bne	a4,a5,.L2371
.L2370:
	lui	a5,%hi(buf)
	add	a0,a5,%lo(buf)
	call	addrFromPPtr
	mv	a5,a0
	mv	a4,a5
	lui	a5,%hi(buflen)
	lw	a5,%lo(buflen)(a5)
	mv	a3,a5
	mv	a2,a4
	li	a1,1
	li	a0,64
	call	syscall
	lui	a5,%hi(buflen)
	sw	zero,%lo(buflen)(a5)
.L2371:
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	putchar, .-putchar
	.align	2
	.globl	qemu_uart_putchar
	.type	qemu_uart_putchar, @function
qemu_uart_putchar:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	qemu_uart_putchar, .-qemu_uart_putchar
	.align	2
	.globl	putDebugChar
	.type	putDebugChar, @function
putDebugChar:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	mv	a0,a5
	call	putchar
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	putDebugChar, .-putDebugChar
	.align	2
	.globl	getDebugChar
	.type	getDebugChar, @function
getDebugChar:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	getDebugChar, .-getDebugChar
	.section	.rodata
	.align	2
.LC368:
	.string	"/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/util.c"
	.align	2
.LC369:
	.string	"(unsigned int)s % 4 == 0"
	.align	2
.LC370:
	.string	"n % 4 == 0"
	.text
	.align	2
	.globl	memzero
	.type	memzero, @function
memzero:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,3
	beqz	a5,.L2377
	lui	a5,%hi(__FUNCTION__.6838)
	add	a3,a5,%lo(__FUNCTION__.6838)
	li	a2,26
	lui	a5,%hi(.LC368)
	add	a1,a5,%lo(.LC368)
	lui	a5,%hi(.LC369)
	add	a0,a5,%lo(.LC369)
	call	_assert_fail
.L2377:
	lw	a5,-40(s0)
	and	a5,a5,3
	beqz	a5,.L2379
	lui	a5,%hi(__FUNCTION__.6838)
	add	a3,a5,%lo(__FUNCTION__.6838)
	li	a2,27
	lui	a5,%hi(.LC368)
	add	a1,a5,%lo(.LC368)
	lui	a5,%hi(.LC370)
	add	a0,a5,%lo(.LC370)
	call	_assert_fail
.L2380:
	lw	a5,-20(s0)
	sw	zero,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,4
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,-4
	sw	a5,-40(s0)
.L2379:
	lw	a5,-40(s0)
	bnez	a5,.L2380
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	memzero, .-memzero
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2382
	lw	a5,-36(s0)
	and	a5,a5,3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2382
	li	a5,1
	j	.L2383
.L2382:
	mv	a5,zero
.L2383:
	beqz	a5,.L2384
	lw	a5,-44(s0)
	and	a5,a5,3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2384
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	memzero
	j	.L2385
.L2384:
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L2386
.L2387:
	lw	a5,-40(s0)
	and	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2386:
	lw	a5,-44(s0)
	bnez	a5,.L2387
.L2385:
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	memset, .-memset
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	j	.L2390
.L2391:
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	sb	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L2390:
	lw	a5,-44(s0)
	bnez	a5,.L2391
	lw	a5,-36(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	memcpy, .-memcpy
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	j	.L2394
.L2398:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sub	a5,a3,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L2395
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bnez	a5,.L2396
.L2395:
	lw	a5,-24(s0)
	j	.L2397
.L2396:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2394:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	bltu	a4,a5,.L2398
	mv	a5,zero
.L2397:
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	strncmp, .-strncmp
	.align	2
	.globl	char_to_int
	.type	char_to_int, @function
char_to_int:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a4,-17(s0)
	li	a5,47
	bleu	a4,a5,.L2400
	lbu	a4,-17(s0)
	li	a5,57
	bgtu	a4,a5,.L2400
	lbu	a5,-17(s0)
	add	a5,a5,-48
	j	.L2401
.L2400:
	lbu	a4,-17(s0)
	li	a5,64
	bleu	a4,a5,.L2402
	lbu	a4,-17(s0)
	li	a5,70
	bgtu	a4,a5,.L2402
	lbu	a5,-17(s0)
	add	a5,a5,-55
	j	.L2401
.L2402:
	lbu	a4,-17(s0)
	li	a5,96
	bleu	a4,a5,.L2403
	lbu	a4,-17(s0)
	li	a5,102
	bgtu	a4,a5,.L2403
	lbu	a5,-17(s0)
	add	a5,a5,-87
	j	.L2401
.L2403:
	li	a5,-1
.L2401:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	char_to_int, .-char_to_int
	.align	2
	.globl	str_to_int
	.type	str_to_int, @function
str_to_int:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	li	a5,48
	bne	a4,a5,.L2405
	lw	a5,-36(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,120
	beq	a4,a5,.L2406
	lw	a5,-36(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,88
	bne	a4,a5,.L2405
.L2406:
	li	a5,16
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,2
	sw	a5,-36(s0)
	j	.L2407
.L2405:
	li	a5,10
	sw	a5,-20(s0)
.L2407:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	bnez	a5,.L2408
	li	a5,-1
	j	.L2409
.L2408:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	j	.L2410
.L2413:
	lbu	a5,-25(s0)
	mv	a0,a5
	call	char_to_int
	sw	a0,-32(s0)
	lw	a4,-32(s0)
	li	a5,-1
	beq	a4,a5,.L2411
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L2412
.L2411:
	li	a5,-1
	j	.L2409
.L2412:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mul	a4,a4,a5
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	add	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
.L2410:
	lbu	a5,-25(s0)
	bnez	a5,.L2413
	lw	a5,-24(s0)
.L2409:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	str_to_int, .-str_to_int
	.globl	ksDomSchedule
	.section	.sdata
	.align	2
	.type	ksDomSchedule, @object
	.size	ksDomSchedule, 8
ksDomSchedule:
	.word	0
	.word	1
	.globl	ksDomScheduleLength
	.align	2
	.type	ksDomScheduleLength, @object
	.size	ksDomScheduleLength, 4
ksDomScheduleLength:
	.word	1
	.section	.rodata
	.align	2
	.type	__FUNCTION__.1921, @object
	.size	__FUNCTION__.1921, 25
__FUNCTION__.1921:
	.string	"fault_user_exception_new"
	.align	2
	.type	__func__.3711, @object
	.size	__func__.3711, 17
__func__.3711:
	.string	"handleInvocation"
	.align	2
	.type	__FUNCTION__.1522, @object
	.size	__FUNCTION__.1522, 27
__FUNCTION__.1522:
	.string	"message_info_set_msgLength"
	.align	2
	.type	__FUNCTION__.1886, @object
	.size	__FUNCTION__.1886, 20
__FUNCTION__.1886:
	.string	"fault_cap_fault_new"
	.align	2
	.type	__FUNCTION__.3720, @object
	.size	__FUNCTION__.3720, 12
__FUNCTION__.3720:
	.string	"handleReply"
	.align	2
	.type	__func__.3722, @object
	.size	__func__.3722, 12
__func__.3722:
	.string	"handleReply"
	.align	2
	.type	__FUNCTION__.2087, @object
	.size	__FUNCTION__.2087, 33
__FUNCTION__.2087:
	.string	"cap_reply_cap_get_capReplyMaster"
	.align	2
	.type	__FUNCTION__.2091, @object
	.size	__FUNCTION__.2091, 28
__FUNCTION__.2091:
	.string	"cap_reply_cap_get_capTCBPtr"
	.align	2
	.type	__FUNCTION__.2005, @object
	.size	__FUNCTION__.2005, 35
__FUNCTION__.2005:
	.string	"cap_endpoint_cap_get_capCanReceive"
	.align	2
	.type	__FUNCTION__.2067, @object
	.size	__FUNCTION__.2067, 37
__FUNCTION__.2067:
	.string	"cap_async_endpoint_cap_get_capAEPPtr"
	.align	2
	.type	__FUNCTION__.2049, @object
	.size	__FUNCTION__.2049, 44
__FUNCTION__.2049:
	.string	"cap_async_endpoint_cap_get_capAEPCanReceive"
	.align	2
	.type	__FUNCTION__.2292, @object
	.size	__FUNCTION__.2292, 36
__FUNCTION__.2292:
	.string	"lookup_fault_missing_capability_new"
	.align	2
	.type	__func__.3753, @object
	.size	__func__.3753, 14
__func__.3753:
	.string	"handleSyscall"
	.align	2
	.type	__FUNCTION__.2232, @object
	.size	__FUNCTION__.2232, 40
__FUNCTION__.2232:
	.string	"cap_page_directory_cap_get_capPDBasePtr"
	.align	2
	.type	__FUNCTION__.2145, @object
	.size	__FUNCTION__.2145, 18
__FUNCTION__.2145:
	.string	"cap_frame_cap_new"
	.align	2
	.type	__FUNCTION__.2201, @object
	.size	__FUNCTION__.2201, 23
__FUNCTION__.2201:
	.string	"cap_page_table_cap_new"
	.align	2
	.type	__FUNCTION__.2228, @object
	.size	__FUNCTION__.2228, 27
__FUNCTION__.2228:
	.string	"cap_page_directory_cap_new"
	.align	2
	.type	__FUNCTION__.1979, @object
	.size	__FUNCTION__.1979, 27
__FUNCTION__.1979:
	.string	"cap_untyped_cap_get_capPtr"
	.align	2
	.type	__FUNCTION__.1992, @object
	.size	__FUNCTION__.1992, 30
__FUNCTION__.1992:
	.string	"cap_endpoint_cap_get_capEPPtr"
	.align	2
	.type	__FUNCTION__.2126, @object
	.size	__FUNCTION__.2126, 30
__FUNCTION__.2126:
	.string	"cap_cnode_cap_get_capCNodePtr"
	.align	2
	.type	__FUNCTION__.2135, @object
	.size	__FUNCTION__.2135, 29
__FUNCTION__.2135:
	.string	"cap_thread_cap_get_capTCBPtr"
	.align	2
	.type	__FUNCTION__.2265, @object
	.size	__FUNCTION__.2265, 33
__FUNCTION__.2265:
	.string	"cap_zombie_cap_get_capZombieType"
	.align	2
	.type	__FUNCTION__.2256, @object
	.size	__FUNCTION__.2256, 31
__FUNCTION__.2256:
	.string	"cap_zombie_cap_get_capZombieID"
	.align	2
	.type	__FUNCTION__.2508, @object
	.size	__FUNCTION__.2508, 19
__FUNCTION__.2508:
	.string	"cap_get_archCapPtr"
	.align	2
	.type	__FUNCTION__.2194, @object
	.size	__FUNCTION__.2194, 30
__FUNCTION__.2194:
	.string	"cap_frame_cap_get_capFBasePtr"
	.align	2
	.type	__FUNCTION__.2223, @object
	.size	__FUNCTION__.2223, 36
__FUNCTION__.2223:
	.string	"cap_page_table_cap_get_capPTBasePtr"
	.align	2
	.type	__FUNCTION__.3952, @object
	.size	__FUNCTION__.3952, 23
__FUNCTION__.3952:
	.string	"insert_region_excluded"
	.align	2
	.type	__FUNCTION__.3964, @object
	.size	__FUNCTION__.3964, 13
__FUNCTION__.3964:
	.string	"init_freemem"
	.align	2
	.type	__func__.4032, @object
	.size	__func__.4032, 12
__func__.4032:
	.string	"init_kernel"
	.align	2
	.type	__func__.4153, @object
	.size	__func__.4153, 15
__func__.4153:
	.string	"APFromVMRights"
	.align	2
	.type	__FUNCTION__.4160, @object
	.size	__FUNCTION__.4160, 17
__FUNCTION__.4160:
	.string	"map_kernel_frame"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.1655, @object
	.size	__FUNCTION__.1655, 8
__FUNCTION__.1655:
	.string	"pte_new"
	.section	.rodata
	.align	2
	.type	__FUNCTION__.4172, @object
	.size	__FUNCTION__.4172, 18
__FUNCTION__.4172:
	.string	"map_kernel_window"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.1745, @object
	.size	__FUNCTION__.1745, 8
__FUNCTION__.1745:
	.string	"pde_new"
	.section	.rodata
	.align	2
	.type	__FUNCTION__.2205, @object
	.size	__FUNCTION__.2205, 41
__FUNCTION__.2205:
	.string	"cap_page_table_cap_get_capPTMappedObject"
	.align	2
	.type	__FUNCTION__.2214, @object
	.size	__FUNCTION__.2214, 40
__FUNCTION__.2214:
	.string	"cap_page_table_cap_get_capPTMappedIndex"
	.align	2
	.type	__FUNCTION__.2149, @object
	.size	__FUNCTION__.2149, 39
__FUNCTION__.2149:
	.string	"cap_frame_cap_get_capFMappedObjectHigh"
	.align	2
	.type	__FUNCTION__.2180, @object
	.size	__FUNCTION__.2180, 38
__FUNCTION__.2180:
	.string	"cap_frame_cap_get_capFMappedObjectLow"
	.align	2
	.type	__FUNCTION__.2163, @object
	.size	__FUNCTION__.2163, 34
__FUNCTION__.2163:
	.string	"cap_frame_cap_get_capFMappedIndex"
	.align	2
	.type	__FUNCTION__.2176, @object
	.size	__FUNCTION__.2176, 31
__FUNCTION__.2176:
	.string	"cap_frame_cap_get_capFVMRights"
	.align	2
	.type	__FUNCTION__.2172, @object
	.size	__FUNCTION__.2172, 27
__FUNCTION__.2172:
	.string	"cap_frame_cap_get_capFSize"
	.align	2
	.type	__func__.2364, @object
	.size	__func__.2364, 16
__func__.2364:
	.string	"pageBitsForSize"
	.align	2
	.type	__func__.4283, @object
	.size	__func__.4283, 20
__func__.4283:
	.string	"checkValidIPCBuffer"
	.align	2
	.type	__func__.4313, @object
	.size	__func__.4313, 12
__func__.4313:
	.string	"makeUserPTE"
	.align	2
	.type	__FUNCTION__.3330, @object
	.size	__FUNCTION__.3330, 14
__FUNCTION__.3330:
	.string	"getSyscallArg"
	.align	2
	.type	__FUNCTION__.2210, @object
	.size	__FUNCTION__.2210, 41
__FUNCTION__.2210:
	.string	"cap_page_table_cap_set_capPTMappedObject"
	.align	2
	.type	__FUNCTION__.2219, @object
	.size	__FUNCTION__.2219, 40
__FUNCTION__.2219:
	.string	"cap_page_table_cap_set_capPTMappedIndex"
	.align	2
	.type	__func__.4367, @object
	.size	__func__.4367, 29
__func__.4367:
	.string	"createSafeMappingEntries_PTE"
	.align	2
	.type	__func__.4427, @object
	.size	__func__.4427, 25
__func__.4427:
	.string	"decodeRISCVMMUInvocation"
	.align	2
	.type	__FUNCTION__.2154, @object
	.size	__FUNCTION__.2154, 39
__FUNCTION__.2154:
	.string	"cap_frame_cap_set_capFMappedObjectHigh"
	.align	2
	.type	__FUNCTION__.2185, @object
	.size	__FUNCTION__.2185, 38
__FUNCTION__.2185:
	.string	"cap_frame_cap_set_capFMappedObjectLow"
	.align	2
	.type	__FUNCTION__.2168, @object
	.size	__FUNCTION__.2168, 34
__FUNCTION__.2168:
	.string	"cap_frame_cap_set_capFMappedIndex"
	.align	2
	.type	__func__.4626, @object
	.size	__func__.4626, 15
__func__.4626:
	.string	"Arch_deriveCap"
	.align	2
	.type	__func__.4675, @object
	.size	__func__.4675, 19
__func__.4675:
	.string	"Arch_getObjectSize"
	.align	2
	.type	__func__.4686, @object
	.size	__func__.4686, 18
__func__.4686:
	.string	"Arch_createObject"
	.align	2
	.type	__func__.4750, @object
	.size	__func__.4750, 13
__func__.4750:
	.string	"setMRs_fault"
	.align	2
	.type	__FUNCTION__.1890, @object
	.size	__FUNCTION__.1890, 28
__FUNCTION__.1890:
	.string	"fault_cap_fault_get_address"
	.align	2
	.type	__FUNCTION__.1894, @object
	.size	__FUNCTION__.1894, 35
__FUNCTION__.1894:
	.string	"fault_cap_fault_get_inReceivePhase"
	.align	2
	.type	__func__.4727, @object
	.size	__func__.4727, 22
__func__.4727:
	.string	"setMRs_lookup_failure"
	.align	2
	.type	__FUNCTION__.2296, @object
	.size	__FUNCTION__.2296, 45
__FUNCTION__.2296:
	.string	"lookup_fault_missing_capability_get_bitsLeft"
	.align	2
	.type	__FUNCTION__.2310, @object
	.size	__FUNCTION__.2310, 41
__FUNCTION__.2310:
	.string	"lookup_fault_depth_mismatch_get_bitsLeft"
	.align	2
	.type	__FUNCTION__.2306, @object
	.size	__FUNCTION__.2306, 42
__FUNCTION__.2306:
	.string	"lookup_fault_depth_mismatch_get_bitsFound"
	.align	2
	.type	__FUNCTION__.2325, @object
	.size	__FUNCTION__.2325, 41
__FUNCTION__.2325:
	.string	"lookup_fault_guard_mismatch_get_bitsLeft"
	.align	2
	.type	__FUNCTION__.2321, @object
	.size	__FUNCTION__.2321, 43
__FUNCTION__.2321:
	.string	"lookup_fault_guard_mismatch_get_guardFound"
	.align	2
	.type	__FUNCTION__.2329, @object
	.size	__FUNCTION__.2329, 42
__FUNCTION__.2329:
	.string	"lookup_fault_guard_mismatch_get_bitsFound"
	.align	2
	.type	__FUNCTION__.1898, @object
	.size	__FUNCTION__.1898, 27
__FUNCTION__.1898:
	.string	"fault_vm_fault_get_address"
	.align	2
	.type	__FUNCTION__.1906, @object
	.size	__FUNCTION__.1906, 36
__FUNCTION__.1906:
	.string	"fault_vm_fault_get_instructionFault"
	.align	2
	.type	__FUNCTION__.1902, @object
	.size	__FUNCTION__.1902, 23
__FUNCTION__.1902:
	.string	"fault_vm_fault_get_FSR"
	.align	2
	.type	__FUNCTION__.1915, @object
	.size	__FUNCTION__.1915, 40
__FUNCTION__.1915:
	.string	"fault_unknown_syscall_get_syscallNumber"
	.align	2
	.type	__FUNCTION__.1925, @object
	.size	__FUNCTION__.1925, 32
__FUNCTION__.1925:
	.string	"fault_user_exception_get_number"
	.align	2
	.type	__FUNCTION__.1929, @object
	.size	__FUNCTION__.1929, 30
__FUNCTION__.1929:
	.string	"fault_user_exception_get_code"
	.align	2
	.type	__func__.4766, @object
	.size	__func__.4766, 21
__func__.4766:
	.string	"setMRs_syscall_error"
	.align	2
	.type	__FUNCTION__.4844, @object
	.size	__FUNCTION__.4844, 14
__FUNCTION__.4844:
	.string	"insert_region"
	.align	2
	.type	__FUNCTION__.2104, @object
	.size	__FUNCTION__.2104, 18
__FUNCTION__.2104:
	.string	"cap_cnode_cap_new"
	.align	2
	.type	__FUNCTION__.4891, @object
	.size	__FUNCTION__.4891, 18
__FUNCTION__.4891:
	.string	"create_domain_cap"
	.align	2
	.type	__FUNCTION__.4953, @object
	.size	__FUNCTION__.4953, 22
__FUNCTION__.4953:
	.string	"create_initial_thread"
	.align	2
	.type	__FUNCTION__.2131, @object
	.size	__FUNCTION__.2131, 19
__FUNCTION__.2131:
	.string	"cap_thread_cap_new"
	.align	2
	.type	__FUNCTION__.1963, @object
	.size	__FUNCTION__.1963, 20
__FUNCTION__.1963:
	.string	"cap_untyped_cap_new"
	.align	2
	.type	__FUNCTION__.4977, @object
	.size	__FUNCTION__.4977, 27
__FUNCTION__.4977:
	.string	"create_untypeds_for_region"
	.align	2
	.type	__FUNCTION__.2651, @object
	.size	__FUNCTION__.2651, 21
__FUNCTION__.2651:
	.string	"cap_get_capSpaceType"
	.align	2
	.type	__FUNCTION__.2670, @object
	.size	__FUNCTION__.2670, 20
__FUNCTION__.2670:
	.string	"cap_get_capSpacePtr"
	.align	2
	.type	__FUNCTION__.2246, @object
	.size	__FUNCTION__.2246, 31
__FUNCTION__.2246:
	.string	"cap_irq_handler_cap_get_capIRQ"
	.align	2
	.type	__FUNCTION__.2689, @object
	.size	__FUNCTION__.2689, 21
__FUNCTION__.2689:
	.string	"cap_get_capSpaceSize"
	.align	2
	.type	__FUNCTION__.1971, @object
	.size	__FUNCTION__.1971, 33
__FUNCTION__.1971:
	.string	"cap_untyped_cap_get_capBlockSize"
	.align	2
	.type	__FUNCTION__.2122, @object
	.size	__FUNCTION__.2122, 32
__FUNCTION__.2122:
	.string	"cap_cnode_cap_get_capCNodeRadix"
	.align	2
	.type	__FUNCTION__.2499, @object
	.size	__FUNCTION__.2499, 24
__FUNCTION__.2499:
	.string	"cap_get_archCapSizeBits"
	.align	2
	.type	__FUNCTION__.2023, @object
	.size	__FUNCTION__.2023, 32
__FUNCTION__.2023:
	.string	"cap_endpoint_cap_get_capEPBadge"
	.align	2
	.type	__FUNCTION__.2040, @object
	.size	__FUNCTION__.2040, 39
__FUNCTION__.2040:
	.string	"cap_async_endpoint_cap_get_capAEPBadge"
	.align	2
	.type	__func__.5093, @object
	.size	__func__.5093, 17
__func__.5093:
	.string	"cdtFindWithExtra"
	.align	2
	.type	__func__.2697, @object
	.size	__func__.2697, 21
__func__.2697:
	.string	"cap_get_capExtraComp"
	.align	2
	.type	__FUNCTION__.5140, @object
	.size	__FUNCTION__.5140, 15
__FUNCTION__.5140:
	.string	"cdtFindInRange"
	.align	2
	.type	__FUNCTION__.5160, @object
	.size	__FUNCTION__.5160, 20
__FUNCTION__.5160:
	.string	"_cdtFindBadgedChild"
	.align	2
	.type	__FUNCTION__.5173, @object
	.size	__FUNCTION__.5173, 14
__FUNCTION__.5173:
	.string	"_cdtFindChild"
	.align	2
	.type	__FUNCTION__.5188, @object
	.size	__FUNCTION__.5188, 10
__FUNCTION__.5188:
	.string	"cdtInsert"
	.align	2
	.type	__FUNCTION__.1833, @object
	.size	__FUNCTION__.1833, 13
__FUNCTION__.1833:
	.string	"mdb_node_new"
	.align	2
	.type	__FUNCTION__.5192, @object
	.size	__FUNCTION__.5192, 10
__FUNCTION__.5192:
	.string	"cdtRemove"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.5197, @object
	.size	__FUNCTION__.5197, 8
__FUNCTION__.5197:
	.string	"cdtMove"
	.align	2
	.type	__FUNCTION__.5210, @object
	.size	__FUNCTION__.5210, 8
__FUNCTION__.5210:
	.string	"cdtSwap"
	.section	.rodata
	.align	2
	.type	__func__.5277, @object
	.size	__func__.5277, 9
__func__.5277:
	.string	"aaInsert"
	.align	2
	.type	__FUNCTION__.5278, @object
	.size	__FUNCTION__.5278, 9
__FUNCTION__.5278:
	.string	"aaInsert"
	.align	2
	.type	__FUNCTION__.1860, @object
	.size	__FUNCTION__.1860, 26
__FUNCTION__.1860:
	.string	"mdb_node_ptr_set_cdtLevel"
	.align	2
	.type	__FUNCTION__.2554, @object
	.size	__FUNCTION__.2554, 26
__FUNCTION__.2554:
	.string	"mdb_node_ptr_set_cdtRight"
	.align	2
	.type	__FUNCTION__.2549, @object
	.size	__FUNCTION__.2549, 25
__FUNCTION__.2549:
	.string	"mdb_node_ptr_set_cdtLeft"
	.align	2
	.type	__func__.5290, @object
	.size	__func__.5290, 9
__func__.5290:
	.string	"aaRemove"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.5321, @object
	.size	__FUNCTION__.5321, 8
__FUNCTION__.5321:
	.string	"aaSplit"
	.section	.rodata
	.align	2
	.type	__FUNCTION__.2302, @object
	.size	__FUNCTION__.2302, 32
__FUNCTION__.2302:
	.string	"lookup_fault_depth_mismatch_new"
	.align	2
	.type	__FUNCTION__.5394, @object
	.size	__FUNCTION__.5394, 19
__FUNCTION__.5394:
	.string	"resolveAddressBits"
	.align	2
	.type	__FUNCTION__.2108, @object
	.size	__FUNCTION__.2108, 36
__FUNCTION__.2108:
	.string	"cap_cnode_cap_get_capCNodeGuardSize"
	.align	2
	.type	__FUNCTION__.2317, @object
	.size	__FUNCTION__.2317, 32
__FUNCTION__.2317:
	.string	"lookup_fault_guard_mismatch_new"
	.align	2
	.type	__FUNCTION__.2014, @object
	.size	__FUNCTION__.2014, 32
__FUNCTION__.2014:
	.string	"cap_endpoint_cap_get_capCanSend"
	.align	2
	.type	__FUNCTION__.1996, @object
	.size	__FUNCTION__.1996, 33
__FUNCTION__.1996:
	.string	"cap_endpoint_cap_get_capCanGrant"
	.align	2
	.type	__func__.5459, @object
	.size	__func__.5459, 15
__func__.5459:
	.string	"activateThread"
	.align	2
	.type	__FUNCTION__.5481, @object
	.size	__FUNCTION__.5481, 16
__FUNCTION__.5481:
	.string	"doReplyTransfer"
	.align	2
	.type	__FUNCTION__.2078, @object
	.size	__FUNCTION__.2078, 27
__FUNCTION__.2078:
	.string	"cap_reply_cap_get_capInCDT"
	.align	2
	.type	__FUNCTION__.2074, @object
	.size	__FUNCTION__.2074, 18
__FUNCTION__.2074:
	.string	"cap_reply_cap_new"
	.align	2
	.type	__FUNCTION__.1495, @object
	.size	__FUNCTION__.1495, 17
__FUNCTION__.1495:
	.string	"message_info_new"
	.align	2
	.type	__FUNCTION__.1506, @object
	.size	__FUNCTION__.1506, 34
__FUNCTION__.1506:
	.string	"message_info_set_msgCapsUnwrapped"
	.align	2
	.type	__FUNCTION__.1532, @object
	.size	__FUNCTION__.1532, 15
__FUNCTION__.1532:
	.string	"cap_rights_new"
	.align	2
	.type	__FUNCTION__.1514, @object
	.size	__FUNCTION__.1514, 30
__FUNCTION__.1514:
	.string	"message_info_set_msgExtraCaps"
	.align	2
	.type	__FUNCTION__.5540, @object
	.size	__FUNCTION__.5540, 13
__FUNCTION__.5540:
	.string	"chooseThread"
	.align	2
	.type	__FUNCTION__.3611, @object
	.size	__FUNCTION__.3611, 19
__FUNCTION__.3611:
	.string	"ready_queues_index"
	.align	2
	.type	__FUNCTION__.1822, @object
	.size	__FUNCTION__.1822, 28
__FUNCTION__.1822:
	.string	"thread_state_ptr_set_tsType"
	.align	2
	.type	__FUNCTION__.5703, @object
	.size	__FUNCTION__.5703, 13
__FUNCTION__.5703:
	.string	"sendAsyncIPC"
	.align	2
	.type	__FUNCTION__.1685, @object
	.size	__FUNCTION__.1685, 37
__FUNCTION__.1685:
	.string	"async_endpoint_ptr_set_aepQueue_head"
	.align	2
	.type	__FUNCTION__.1693, @object
	.size	__FUNCTION__.1693, 37
__FUNCTION__.1693:
	.string	"async_endpoint_ptr_set_aepQueue_tail"
	.align	2
	.type	__FUNCTION__.1701, @object
	.size	__FUNCTION__.1701, 29
__FUNCTION__.1701:
	.string	"async_endpoint_ptr_set_state"
	.align	2
	.type	__FUNCTION__.1811, @object
	.size	__FUNCTION__.1811, 41
__FUNCTION__.1811:
	.string	"thread_state_ptr_set_blockingIPCEndpoint"
	.align	2
	.type	__FUNCTION__.5729, @object
	.size	__FUNCTION__.5729, 15
__FUNCTION__.5729:
	.string	"asyncIPCCancel"
	.align	2
	.type	__func__.5735, @object
	.size	__func__.5735, 17
__func__.5735:
	.string	"completeAsyncIPC"
	.align	2
	.type	__FUNCTION__.1669, @object
	.size	__FUNCTION__.1669, 35
__FUNCTION__.1669:
	.string	"async_endpoint_ptr_set_aepBoundTCB"
	.align	2
	.type	__FUNCTION__.5770, @object
	.size	__FUNCTION__.5770, 22
__FUNCTION__.5770:
	.string	"decodeCNodeInvocation"
	.align	2
	.type	__func__.5771, @object
	.size	__func__.5771, 22
__func__.5771:
	.string	"decodeCNodeInvocation"
	.align	2
	.type	__func__.5832, @object
	.size	__func__.5832, 22
__func__.5832:
	.string	"invokeCNodeSaveCaller"
	.align	2
	.type	__FUNCTION__.2096, @object
	.size	__FUNCTION__.2096, 32
__FUNCTION__.2096:
	.string	"cap_reply_cap_ptr_set_capTCBPtr"
	.align	2
	.type	__FUNCTION__.2083, @object
	.size	__FUNCTION__.2083, 31
__FUNCTION__.2083:
	.string	"cap_reply_cap_ptr_set_capInCDT"
	.align	2
	.type	__FUNCTION__.5843, @object
	.size	__FUNCTION__.5843, 10
__FUNCTION__.5843:
	.string	"cteInsert"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.5849, @object
	.size	__FUNCTION__.5849, 8
__FUNCTION__.5849:
	.string	"cteMove"
	.section	.rodata
	.align	2
	.type	__func__.5882, @object
	.size	__func__.5882, 13
__func__.5882:
	.string	"capRemovable"
	.align	2
	.type	__FUNCTION__.5906, @object
	.size	__FUNCTION__.5906, 13
__FUNCTION__.5906:
	.string	"reduceZombie"
	.align	2
	.type	__func__.5913, @object
	.size	__func__.5913, 13
__func__.5913:
	.string	"reduceZombie"
	.align	2
	.type	__FUNCTION__.2261, @object
	.size	__FUNCTION__.2261, 31
__FUNCTION__.2261:
	.string	"cap_zombie_cap_set_capZombieID"
	.align	2
	.type	__FUNCTION__.5919, @object
	.size	__FUNCTION__.5919, 13
__FUNCTION__.5919:
	.string	"cteDeleteOne"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.5984, @object
	.size	__FUNCTION__.5984, 8
__FUNCTION__.5984:
	.string	"sendIPC"
	.section	.rodata
	.align	2
	.type	__FUNCTION__.1779, @object
	.size	__FUNCTION__.1779, 41
__FUNCTION__.1779:
	.string	"thread_state_ptr_set_blockingIPCCanGrant"
	.align	2
	.type	__FUNCTION__.1787, @object
	.size	__FUNCTION__.1787, 39
__FUNCTION__.1787:
	.string	"thread_state_ptr_set_blockingIPCIsCall"
	.align	2
	.type	__FUNCTION__.1712, @object
	.size	__FUNCTION__.1712, 30
__FUNCTION__.1712:
	.string	"endpoint_ptr_set_epQueue_head"
	.align	2
	.type	__FUNCTION__.1720, @object
	.size	__FUNCTION__.1720, 30
__FUNCTION__.1720:
	.string	"endpoint_ptr_set_epQueue_tail"
	.align	2
	.type	__FUNCTION__.1728, @object
	.size	__FUNCTION__.1728, 23
__FUNCTION__.1728:
	.string	"endpoint_ptr_set_state"
	.align	2
	.type	__FUNCTION__.5992, @object
	.size	__FUNCTION__.5992, 11
__FUNCTION__.5992:
	.string	"receiveIPC"
	.align	2
	.type	__FUNCTION__.1795, @object
	.size	__FUNCTION__.1795, 45
__FUNCTION__.1795:
	.string	"thread_state_ptr_set_blockingIPCDiminishCaps"
	.align	2
	.type	__FUNCTION__.6019, @object
	.size	__FUNCTION__.6019, 10
__FUNCTION__.6019:
	.string	"ipcCancel"
	.align	2
	.type	__func__.6052, @object
	.size	__func__.6052, 20
__func__.6052:
	.string	"epCancelBadgedSends"
	.align	2
	.type	__func__.6068, @object
	.size	__func__.6068, 27
__func__.6068:
	.string	"decodeIRQControlInvocation"
	.align	2
	.type	__FUNCTION__.2242, @object
	.size	__FUNCTION__.2242, 24
__FUNCTION__.2242:
	.string	"cap_irq_handler_cap_new"
	.align	2
	.type	__func__.6085, @object
	.size	__func__.6085, 27
__func__.6085:
	.string	"decodeIRQHandlerInvocation"
	.align	2
	.type	__FUNCTION__.2058, @object
	.size	__FUNCTION__.2058, 41
__FUNCTION__.2058:
	.string	"cap_async_endpoint_cap_get_capAEPCanSend"
	.align	2
	.type	__func__.6113, @object
	.size	__func__.6113, 19
__func__.6113:
	.string	"deletingIRQHandler"
	.align	2
	.type	__func__.6127, @object
	.size	__func__.6127, 16
__func__.6127:
	.string	"handleInterrupt"
	.align	2
	.type	__func__.6145, @object
	.size	__func__.6145, 14
__func__.6145:
	.string	"getObjectSize"
	.align	2
	.type	__FUNCTION__.6169, @object
	.size	__FUNCTION__.6169, 12
__FUNCTION__.6169:
	.string	"finaliseCap"
	.align	2
	.type	__func__.6172, @object
	.size	__func__.6172, 12
__func__.6172:
	.string	"finaliseCap"
	.align	2
	.type	__FUNCTION__.2252, @object
	.size	__FUNCTION__.2252, 19
__FUNCTION__.2252:
	.string	"cap_zombie_cap_new"
	.align	2
	.type	__func__.6187, @object
	.size	__func__.6187, 11
__func__.6187:
	.string	"recycleCap"
	.align	2
	.type	__FUNCTION__.6195, @object
	.size	__FUNCTION__.6195, 11
__FUNCTION__.6195:
	.string	"recycleCap"
	.align	2
	.type	__FUNCTION__.2028, @object
	.size	__FUNCTION__.2028, 32
__FUNCTION__.2028:
	.string	"cap_endpoint_cap_set_capEPBadge"
	.align	2
	.type	__FUNCTION__.2045, @object
	.size	__FUNCTION__.2045, 39
__FUNCTION__.2045:
	.string	"cap_async_endpoint_cap_set_capAEPBadge"
	.align	2
	.type	__FUNCTION__.2118, @object
	.size	__FUNCTION__.2118, 32
__FUNCTION__.2118:
	.string	"cap_cnode_cap_set_capCNodeGuard"
	.align	2
	.type	__FUNCTION__.2113, @object
	.size	__FUNCTION__.2113, 36
__FUNCTION__.2113:
	.string	"cap_cnode_cap_set_capCNodeGuardSize"
	.align	2
	.type	__func__.6262, @object
	.size	__func__.6262, 14
__func__.6262:
	.string	"maskCapRights"
	.align	2
	.type	__FUNCTION__.2019, @object
	.size	__FUNCTION__.2019, 32
__FUNCTION__.2019:
	.string	"cap_endpoint_cap_set_capCanSend"
	.align	2
	.type	__FUNCTION__.2010, @object
	.size	__FUNCTION__.2010, 35
__FUNCTION__.2010:
	.string	"cap_endpoint_cap_set_capCanReceive"
	.align	2
	.type	__FUNCTION__.2001, @object
	.size	__FUNCTION__.2001, 33
__FUNCTION__.2001:
	.string	"cap_endpoint_cap_set_capCanGrant"
	.align	2
	.type	__FUNCTION__.2063, @object
	.size	__FUNCTION__.2063, 41
__FUNCTION__.2063:
	.string	"cap_async_endpoint_cap_set_capAEPCanSend"
	.align	2
	.type	__FUNCTION__.2054, @object
	.size	__FUNCTION__.2054, 44
__FUNCTION__.2054:
	.string	"cap_async_endpoint_cap_set_capAEPCanReceive"
	.align	2
	.type	__func__.6276, @object
	.size	__func__.6276, 13
__func__.6276:
	.string	"createObject"
	.align	2
	.type	__FUNCTION__.1988, @object
	.size	__FUNCTION__.1988, 21
__FUNCTION__.1988:
	.string	"cap_endpoint_cap_new"
	.align	2
	.type	__FUNCTION__.2036, @object
	.size	__FUNCTION__.2036, 27
__FUNCTION__.2036:
	.string	"cap_async_endpoint_cap_new"
	.align	2
	.type	__func__.6304, @object
	.size	__func__.6304, 17
__func__.6304:
	.string	"decodeInvocation"
	.align	2
	.type	__FUNCTION__.1803, @object
	.size	__FUNCTION__.1803, 31
__FUNCTION__.1803:
	.string	"thread_state_ptr_set_tcbQueued"
	.align	2
	.type	__FUNCTION__.6387, @object
	.size	__FUNCTION__.6387, 15
__FUNCTION__.6387:
	.string	"setupCallerCap"
	.align	2
	.type	__FUNCTION__.6394, @object
	.size	__FUNCTION__.6394, 16
__FUNCTION__.6394:
	.string	"deleteCallerCap"
	.align	2
	.type	__func__.6443, @object
	.size	__func__.6443, 20
__func__.6443:
	.string	"decodeTCBInvocation"
	.align	2
	.type	__func__.6459, @object
	.size	__func__.6459, 20
__func__.6459:
	.string	"decodeCopyRegisters"
	.align	2
	.type	__func__.6471, @object
	.size	__func__.6471, 20
__func__.6471:
	.string	"decodeReadRegisters"
	.align	2
	.type	__func__.6483, @object
	.size	__func__.6483, 21
__func__.6483:
	.string	"decodeWriteRegisters"
	.align	2
	.type	__func__.6503, @object
	.size	__func__.6503, 19
__func__.6503:
	.string	"decodeTCBConfigure"
	.align	2
	.type	__func__.6511, @object
	.size	__func__.6511, 18
__func__.6511:
	.string	"decodeSetPriority"
	.align	2
	.type	__func__.6522, @object
	.size	__func__.6522, 19
__func__.6522:
	.string	"decodeSetIPCBuffer"
	.align	2
	.type	__func__.6540, @object
	.size	__func__.6540, 15
__func__.6540:
	.string	"decodeSetSpace"
	.align	2
	.type	__func__.6549, @object
	.size	__func__.6549, 23
__func__.6549:
	.string	"decodeDomainInvocation"
	.align	2
	.type	__func__.6556, @object
	.size	__func__.6556, 14
__func__.6556:
	.string	"decodeBindAEP"
	.align	2
	.type	__func__.6561, @object
	.size	__func__.6561, 16
__func__.6561:
	.string	"decodeUnbindAEP"
	.align	2
	.type	__func__.6682, @object
	.size	__func__.6682, 24
__func__.6682:
	.string	"decodeUntypedInvocation"
	.align	2
	.type	__FUNCTION__.1967, @object
	.size	__FUNCTION__.1967, 36
__FUNCTION__.1967:
	.string	"cap_untyped_cap_get_capDeviceMemory"
	.align	2
	.type	__FUNCTION__.1975, @object
	.size	__FUNCTION__.1975, 37
__FUNCTION__.1975:
	.string	"cap_untyped_cap_ptr_get_capBlockSize"
	.section	.sdata
	.align	2
	.type	__FUNCTION__.6838, @object
	.size	__FUNCTION__.6838, 8
__FUNCTION__.6838:
	.string	"memzero"
	.ident	"GCC: (GNU) 5.2.0"
