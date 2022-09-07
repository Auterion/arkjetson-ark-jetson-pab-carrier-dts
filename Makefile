old-dtb := $(dtb-y)
old-dtbo := $(dtbo-y)
dtb-y :=
dtbo-y :=
makefile-path := platform/t23x/arvala/kernel-dts

BUILD_ENABLE=n
ifneq ($(filter y,$(CONFIG_ARCH_TEGRA_23x_SOC)),)
BUILD_ENABLE=y
endif

dtb-$(BUILD_ENABLE) += tegra234-p3767-0002-p3509-a02.dtb
dtb-$(BUILD_ENABLE) += tegra234-p3767-0002-p3768-0000-a0.dtb
dtbo-$(BUILD_ENABLE) += tegra234-p3767-0002-p3509-a02-hdr40.dtbo
dtbo-$(BUILD_ENABLE) += tegra234-p3767-0002-p3768-0000-a0-hdr40.dtbo
dtbo-$(BUILD_ENABLE) += tegra234-p3767-camera-imx477-imx219.dtbo
dtbo-$(BUILD_ENABLE) += tegra234-p3767-camera-imx477-dual.dtbo
dtbo-$(BUILD_ENABLE) += tegra234-p3767-camera-imx219-dual.dtbo

ifneq ($(dtb-y),)
dtb-y := $(addprefix $(makefile-path)/,$(dtb-y))
endif
ifneq ($(dtbo-y),)
dtbo-y := $(addprefix $(makefile-path)/,$(dtbo-y))
endif

dtb-y += $(old-dtb)
dtbo-y += $(old-dtbo)