deps_config := \
	/home/hesham/Projects/seL4/seL4riscv-multikernel/tools/common/Kconfig \
	tools/elfloader/Kconfig \
	apps/tty_test/Kconfig \
	apps/sos/Kconfig \
	libs/libsel4allocman/Kconfig \
	libs/libplatsupport/Kconfig \
	libs/libutils/Kconfig \
	libs/libsel4simple-stable/Kconfig \
	libs/libsel4simple-default/Kconfig \
	libs/libsel4simple/Kconfig \
	libs/libsel4platsupport/Kconfig \
	libs/libsel4utils/Kconfig \
	libs/libelf/Kconfig \
	libs/libcpio/Kconfig \
	libs/libsel4cspace/Kconfig \
	libs/libsel4vspace/Kconfig \
	libs/libsel4vka/Kconfig \
	libs/libsel4muslcsys/Kconfig \
	libs/libmuslc/Kconfig \
	libs/libsel4/Kconfig \
	/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/plat/pc99/Kconfig \
	/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel/src/arch/arm/Kconfig \
	kernel/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(KERNEL_ROOT_PATH)" "/home/hesham/Projects/seL4/seL4riscv-multikernel/kernel"
include/config/auto.conf: FORCE
endif
ifneq "$(COMMON_PATH)" "/home/hesham/Projects/seL4/seL4riscv-multikernel/tools/common"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
