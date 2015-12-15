#ifndef _HOME_HESHAM_PROJECTS_SEL4_SEL4RISCV_MULTIKERNEL_BUILD_RISCV_SPIKE_LIBSEL4_INCLUDE_SEL4_TYPES_GEN_H
#define _HOME_HESHAM_PROJECTS_SEL4_SEL4RISCV_MULTIKERNEL_BUILD_RISCV_SPIKE_LIBSEL4_INCLUDE_SEL4_TYPES_GEN_H

#include <assert.h>
#include <autoconf.h>
#include <sel4/macros.h>
#include <stdint.h>
struct seL4_MessageInfo {
    uint32_t words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_new(uint32_t label, uint32_t capsUnwrapped, uint32_t extraCaps, uint32_t length) {
    seL4_MessageInfo_t seL4_MessageInfo;

    seL4_MessageInfo.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    assert((label & ~0xfffff) == 0);
    seL4_MessageInfo.words[0] |= (label & 0xfffff) << 12;
    /* fail if user has passed bits that we will override */
    assert((capsUnwrapped & ~0x7) == 0);
    seL4_MessageInfo.words[0] |= (capsUnwrapped & 0x7) << 9;
    /* fail if user has passed bits that we will override */
    assert((extraCaps & ~0x3) == 0);
    seL4_MessageInfo.words[0] |= (extraCaps & 0x3) << 7;
    /* fail if user has passed bits that we will override */
    assert((length & ~0x7f) == 0);
    seL4_MessageInfo.words[0] |= (length & 0x7f) << 0;

    return seL4_MessageInfo;
}

static inline void
seL4_MessageInfo_ptr_new(seL4_MessageInfo_t *seL4_MessageInfo_ptr, uint32_t label, uint32_t capsUnwrapped, uint32_t extraCaps, uint32_t length) {
    seL4_MessageInfo_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    assert((label & ~0xfffff) == 0);
    seL4_MessageInfo_ptr->words[0] |= (label & 0xfffff) << 12;
    /* fail if user has passed bits that we will override */
    assert((capsUnwrapped & ~0x7) == 0);
    seL4_MessageInfo_ptr->words[0] |= (capsUnwrapped & 0x7) << 9;
    /* fail if user has passed bits that we will override */
    assert((extraCaps & ~0x3) == 0);
    seL4_MessageInfo_ptr->words[0] |= (extraCaps & 0x3) << 7;
    /* fail if user has passed bits that we will override */
    assert((length & ~0x7f) == 0);
    seL4_MessageInfo_ptr->words[0] |= (length & 0x7f) << 0;
}

static inline uint32_t CONST
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    return (seL4_MessageInfo.words[0] & 0xfffff000) >> 12;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_label(seL4_MessageInfo_t seL4_MessageInfo, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0xfffff000 >> 12) & v) == 0);
    seL4_MessageInfo.words[0] &= ~0xfffff000;
    seL4_MessageInfo.words[0] |= (v << 12) & 0xfffff000;
    return seL4_MessageInfo;
}

static inline uint32_t PURE
seL4_MessageInfo_ptr_get_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    return (seL4_MessageInfo_ptr->words[0] & 0xfffff000) >> 12;
}

static inline void
seL4_MessageInfo_ptr_set_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0xfffff000 >> 12) & v) == 0);
    seL4_MessageInfo_ptr->words[0] &= ~0xfffff000;
    seL4_MessageInfo_ptr->words[0] |= (v << 12) & 0xfffff000;
}

static inline uint32_t CONST
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    return (seL4_MessageInfo.words[0] & 0xe00) >> 9;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0xe00 >> 9) & v) == 0);
    seL4_MessageInfo.words[0] &= ~0xe00;
    seL4_MessageInfo.words[0] |= (v << 9) & 0xe00;
    return seL4_MessageInfo;
}

static inline uint32_t PURE
seL4_MessageInfo_ptr_get_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    return (seL4_MessageInfo_ptr->words[0] & 0xe00) >> 9;
}

static inline void
seL4_MessageInfo_ptr_set_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0xe00 >> 9) & v) == 0);
    seL4_MessageInfo_ptr->words[0] &= ~0xe00;
    seL4_MessageInfo_ptr->words[0] |= (v << 9) & 0xe00;
}

static inline uint32_t CONST
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    return (seL4_MessageInfo.words[0] & 0x180) >> 7;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0x180 >> 7) & v) == 0);
    seL4_MessageInfo.words[0] &= ~0x180;
    seL4_MessageInfo.words[0] |= (v << 7) & 0x180;
    return seL4_MessageInfo;
}

static inline uint32_t PURE
seL4_MessageInfo_ptr_get_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    return (seL4_MessageInfo_ptr->words[0] & 0x180) >> 7;
}

static inline void
seL4_MessageInfo_ptr_set_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0x180 >> 7) & v) == 0);
    seL4_MessageInfo_ptr->words[0] &= ~0x180;
    seL4_MessageInfo_ptr->words[0] |= (v << 7) & 0x180;
}

static inline uint32_t CONST
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    return (seL4_MessageInfo.words[0] & 0x7f) >> 0;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0x7f >> 0) & v) == 0);
    seL4_MessageInfo.words[0] &= ~0x7f;
    seL4_MessageInfo.words[0] |= (v << 0) & 0x7f;
    return seL4_MessageInfo;
}

static inline uint32_t PURE
seL4_MessageInfo_ptr_get_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    return (seL4_MessageInfo_ptr->words[0] & 0x7f) >> 0;
}

static inline void
seL4_MessageInfo_ptr_set_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    assert(((~0x7f >> 0) & v) == 0);
    seL4_MessageInfo_ptr->words[0] &= ~0x7f;
    seL4_MessageInfo_ptr->words[0] |= (v << 0) & 0x7f;
}

struct seL4_CapData {
    uint32_t words[1];
};
typedef struct seL4_CapData seL4_CapData_t;

enum seL4_CapData_tag {
    seL4_CapData_Badge = 0,
    seL4_CapData_Guard = 1
};
typedef enum seL4_CapData_tag seL4_CapData_tag_t;

static inline uint32_t CONST
seL4_CapData_get_CapDataType(seL4_CapData_t seL4_CapData) {
    return (seL4_CapData.words[0] >> 31) & 0x1;
}

static inline int CONST
seL4_CapData_CapDataType_equals(seL4_CapData_t seL4_CapData, uint32_t seL4_CapData_type_tag) {
    return ((seL4_CapData.words[0] >> 31) & 0x1) == seL4_CapData_type_tag;
}

static inline uint32_t PURE
seL4_CapData_ptr_get_CapDataType(seL4_CapData_t *seL4_CapData_ptr) {
    return (seL4_CapData_ptr->words[0] >> 31) & 0x1;
}

static inline seL4_CapData_t CONST
seL4_CapData_Badge_new(uint32_t Badge) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    assert(((uint32_t)seL4_CapData_Badge & ~0x1) == 0);
    seL4_CapData.words[0] |= ((uint32_t)seL4_CapData_Badge & 0x1) << 31;
    /* fail if user has passed bits that we will override */
    assert((Badge & ~0xfffffff) == 0);
    seL4_CapData.words[0] |= (Badge & 0xfffffff) << 0;

    return seL4_CapData;
}

static inline void
seL4_CapData_Badge_ptr_new(seL4_CapData_t *seL4_CapData_ptr, uint32_t Badge) {
    seL4_CapData_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    assert(((uint32_t)seL4_CapData_Badge & ~0x1) == 0);
    seL4_CapData_ptr->words[0] |= ((uint32_t)seL4_CapData_Badge & 0x1) << 31;
    /* fail if user has passed bits that we will override */
    assert((Badge & ~0xfffffff) == 0);
    seL4_CapData_ptr->words[0] |= (Badge & 0xfffffff) << 0;
}

static inline uint32_t CONST
seL4_CapData_Badge_get_Badge(seL4_CapData_t seL4_CapData) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    return (seL4_CapData.words[0] & 0xfffffff) >> 0;
}

static inline seL4_CapData_t CONST
seL4_CapData_Badge_set_Badge(seL4_CapData_t seL4_CapData, uint32_t v) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);
    /* fail if user has passed bits that we will override */
    assert(((~0xfffffff >> 0) & v) == 0);

    seL4_CapData.words[0] &= ~0xfffffff;
    seL4_CapData.words[0] |= (v << 0) & 0xfffffff;
    return seL4_CapData;
}

static inline uint32_t PURE
seL4_CapData_Badge_ptr_get_Badge(seL4_CapData_t *seL4_CapData_ptr) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    return (seL4_CapData_ptr->words[0] & 0xfffffff) >> 0;
}

static inline void
seL4_CapData_Badge_ptr_set_Badge(seL4_CapData_t *seL4_CapData_ptr,
                                      uint32_t v) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Badge);

    /* fail if user has passed bits that we will override */
    assert(((~0xfffffff >> 0) & v) == 0);

    seL4_CapData_ptr->words[0] &= ~0xfffffff;
    seL4_CapData_ptr->words[0] |= (v << 0) & 0xfffffff;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_new(uint32_t GuardBits, uint32_t GuardSize) {
    seL4_CapData_t seL4_CapData;

    seL4_CapData.words[0] = 0;
    
    /* fail if user has passed bits that we will override */
    assert(((uint32_t)seL4_CapData_Guard & ~0x1) == 0);
    seL4_CapData.words[0] |= ((uint32_t)seL4_CapData_Guard & 0x1) << 31;
    /* fail if user has passed bits that we will override */
    assert((GuardBits & ~0x3ffff) == 0);
    seL4_CapData.words[0] |= (GuardBits & 0x3ffff) << 8;
    /* fail if user has passed bits that we will override */
    assert((GuardSize & ~0x1f) == 0);
    seL4_CapData.words[0] |= (GuardSize & 0x1f) << 3;

    return seL4_CapData;
}

static inline void
seL4_CapData_Guard_ptr_new(seL4_CapData_t *seL4_CapData_ptr, uint32_t GuardBits, uint32_t GuardSize) {
    seL4_CapData_ptr->words[0] = 0;

    /* fail if user has passed bits that we will override */
    assert(((uint32_t)seL4_CapData_Guard & ~0x1) == 0);
    seL4_CapData_ptr->words[0] |= ((uint32_t)seL4_CapData_Guard & 0x1) << 31;
    /* fail if user has passed bits that we will override */
    assert((GuardBits & ~0x3ffff) == 0);
    seL4_CapData_ptr->words[0] |= (GuardBits & 0x3ffff) << 8;
    /* fail if user has passed bits that we will override */
    assert((GuardSize & ~0x1f) == 0);
    seL4_CapData_ptr->words[0] |= (GuardSize & 0x1f) << 3;
}

static inline uint32_t CONST
seL4_CapData_Guard_get_GuardBits(seL4_CapData_t seL4_CapData) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    return (seL4_CapData.words[0] & 0x3ffff00) >> 8;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_set_GuardBits(seL4_CapData_t seL4_CapData, uint32_t v) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);
    /* fail if user has passed bits that we will override */
    assert(((~0x3ffff00 >> 8) & v) == 0);

    seL4_CapData.words[0] &= ~0x3ffff00;
    seL4_CapData.words[0] |= (v << 8) & 0x3ffff00;
    return seL4_CapData;
}

static inline uint32_t PURE
seL4_CapData_Guard_ptr_get_GuardBits(seL4_CapData_t *seL4_CapData_ptr) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    return (seL4_CapData_ptr->words[0] & 0x3ffff00) >> 8;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardBits(seL4_CapData_t *seL4_CapData_ptr,
                                      uint32_t v) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    /* fail if user has passed bits that we will override */
    assert(((~0x3ffff00 >> 8) & v) == 0);

    seL4_CapData_ptr->words[0] &= ~0x3ffff00;
    seL4_CapData_ptr->words[0] |= (v << 8) & 0x3ffff00;
}

static inline uint32_t CONST
seL4_CapData_Guard_get_GuardSize(seL4_CapData_t seL4_CapData) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    return (seL4_CapData.words[0] & 0xf8) >> 3;
}

static inline seL4_CapData_t CONST
seL4_CapData_Guard_set_GuardSize(seL4_CapData_t seL4_CapData, uint32_t v) {
    assert(((seL4_CapData.words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);
    /* fail if user has passed bits that we will override */
    assert(((~0xf8 >> 3) & v) == 0);

    seL4_CapData.words[0] &= ~0xf8;
    seL4_CapData.words[0] |= (v << 3) & 0xf8;
    return seL4_CapData;
}

static inline uint32_t PURE
seL4_CapData_Guard_ptr_get_GuardSize(seL4_CapData_t *seL4_CapData_ptr) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    return (seL4_CapData_ptr->words[0] & 0xf8) >> 3;
}

static inline void
seL4_CapData_Guard_ptr_set_GuardSize(seL4_CapData_t *seL4_CapData_ptr,
                                      uint32_t v) {
    assert(((seL4_CapData_ptr->words[0] >> 31) & 0x1) ==
           seL4_CapData_Guard);

    /* fail if user has passed bits that we will override */
    assert(((~0xf8 >> 3) & v) == 0);

    seL4_CapData_ptr->words[0] &= ~0xf8;
    seL4_CapData_ptr->words[0] |= (v << 3) & 0xf8;
}

#endif
