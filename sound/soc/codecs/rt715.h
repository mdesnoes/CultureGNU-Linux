/* SPDX-License-Identifier: GPL-2.0 */
/*
 * rt715.h -- RT715 ALSA SoC audio driver header
 *
 * Copyright(c) 2019 Realtek Semiconductor Corp.
 */

#ifndef __RT715_H__
#define __RT715_H__

#include <linux/regulator/consumer.h>

struct rt715_priv {
	struct regmap *regmap;
	struct regmap *sdw_regmap;
	struct snd_soc_codec *codec;
	struct sdw_slave *slave;
	int dbg_nid;
	int dbg_vid;
	int dbg_payload;
	enum sdw_slave_status status;
	struct sdw_bus_params params;
	bool hw_init;
	bool first_hw_init;
};

struct sdw_stream_data {
	struct sdw_stream_runtime *sdw_stream;
};

/* NID */
#define RT715_AUDIO_FUNCTION_GROUP			0x01
#define RT715_MIC_ADC					0x07
#define RT715_LINE_ADC					0x08
#define RT715_MIX_ADC					0x09
#define RT715_DMIC1					0x12
#define RT715_DMIC2					0x13
#define RT715_MIC1					0x18
#define RT715_MIC2					0x19
#define RT715_LINE1					0x1a
#define RT715_LINE2					0x1b
#define RT715_DMIC3					0x1d
#define RT715_DMIC4					0x29
#define RT715_VENDOR_REGISTERS				0x20
#define RT715_MUX_IN1					0x22
#define RT715_MUX_IN2					0x23
#define RT715_MUX_IN3					0x24
#define RT715_MUX_IN4					0x25
#define RT715_MIX_ADC2					0x27
#define RT715_INLINE_CMD				0x55

/* Index (NID:20h) */
#define RT715_SDW_INPUT_SEL				0x39
#define RT715_EXT_DMIC_CLK_CTRL2			0x54

/* Verb */
#define RT715_VERB_SET_CONNECT_SEL			0x3100
#define RT715_VERB_GET_CONNECT_SEL			0xb100
#define RT715_VERB_SET_EAPD_BTLENABLE			0x3c00
#define RT715_VERB_SET_POWER_STATE			0x3500
#define RT715_VERB_SET_CHANNEL_STREAMID			0x3600
#define RT715_VERB_SET_PIN_WIDGET_CONTROL		0x3700
#define RT715_VERB_SET_CONFIG_DEFAULT1			0x4c00
#define RT715_VERB_SET_CONFIG_DEFAULT2			0x4d00
#define RT715_VERB_SET_CONFIG_DEFAULT3			0x4e00
#define RT715_VERB_SET_CONFIG_DEFAULT4			0x4f00
#define RT715_VERB_SET_UNSOLICITED_ENABLE		0x3800
#define RT715_SET_AMP_GAIN_MUTE_H			0x7300
#define RT715_SET_AMP_GAIN_MUTE_L			0x8380
#define RT715_READ_HDA_3				0x2012
#define RT715_READ_HDA_2				0x2013
#define RT715_READ_HDA_1				0x2014
#define RT715_READ_HDA_0				0x2015
#define RT715_PRIV_INDEX_W_H				0x7520
#define RT715_PRIV_INDEX_W_L				0x85a0
#define RT715_PRIV_DATA_W_H				0x7420
#define RT715_PRIV_DATA_W_L				0x84a0
#define RT715_PRIV_INDEX_R_H				0x9d20
#define RT715_PRIV_INDEX_R_L				0xada0
#define RT715_PRIV_DATA_R_H				0x9c20
#define RT715_PRIV_DATA_R_L				0xaca0
#define RT715_MIC_ADC_FORMAT_H				0x7207
#define RT715_MIC_ADC_FORMAT_L				0x8287
#define RT715_MIC_LINE_FORMAT_H				0x7208
#define RT715_MIC_LINE_FORMAT_L				0x8288
#define RT715_MIX_ADC_FORMAT_H				0x7209
#define RT715_MIX_ADC_FORMAT_L				0x8289
#define RT715_MIX_ADC2_FORMAT_H				0x7227
#define RT715_MIX_ADC2_FORMAT_L				0x82a7
#define RT715_FUNC_RESET				0xff01

#define RT715_SET_AUDIO_POWER_STATE\
	(RT715_VERB_SET_POWER_STATE | RT715_AUDIO_FUNCTION_GROUP)
#define RT715_SET_PIN_DMIC1\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_DMIC1)
#define RT715_SET_PIN_DMIC2\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_DMIC2)
#define RT715_SET_PIN_DMIC3\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_DMIC3)
#define RT715_SET_PIN_DMIC4\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_DMIC4)
#define RT715_SET_PIN_MIC1\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_MIC1)
#define RT715_SET_PIN_MIC2\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_MIC2)
#define RT715_SET_PIN_LINE1\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_LINE1)
#define RT715_SET_PIN_LINE2\
	(RT715_VERB_SET_PIN_WIDGET_CONTROL | RT715_LINE2)
#define RT715_SET_MIC1_UNSOLICITED_ENABLE\
	(RT715_VERB_SET_UNSOLICITED_ENABLE | RT715_MIC1)
#define RT715_SET_MIC2_UNSOLICITED_ENABLE\
	(RT715_VERB_SET_UNSOLICITED_ENABLE | RT715_MIC2)
#define RT715_SET_STREAMID_MIC_ADC\
	(RT715_VERB_SET_CHANNEL_STREAMID | RT715_MIC_ADC)
#define RT715_SET_STREAMID_LINE_ADC\
	(RT715_VERB_SET_CHANNEL_STREAMID | RT715_LINE_ADC)
#define RT715_SET_STREAMID_MIX_ADC\
	(RT715_VERB_SET_CHANNEL_STREAMID | RT715_MIX_ADC)
#define RT715_SET_STREAMID_MIX_ADC2\
	(RT715_VERB_SET_CHANNEL_STREAMID | RT715_MIX_ADC2)
#define RT715_SET_GAIN_MIC_ADC_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_MIC_ADC)
#define RT715_SET_GAIN_MIC_ADC_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_MIC_ADC)
#define RT715_SET_GAIN_LINE_ADC_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_LINE_ADC)
#define RT715_SET_GAIN_LINE_ADC_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_LINE_ADC)
#define RT715_SET_GAIN_MIX_ADC_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_MIX_ADC)
#define RT715_SET_GAIN_MIX_ADC_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_MIX_ADC)
#define RT715_SET_GAIN_MIX_ADC2_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_MIX_ADC2)
#define RT715_SET_GAIN_MIX_ADC2_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_MIX_ADC2)
#define RT715_SET_GAIN_DMIC1_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_DMIC1)
#define RT715_SET_GAIN_DMIC1_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_DMIC1)
#define RT715_SET_GAIN_DMIC2_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_DMIC2)
#define RT715_SET_GAIN_DMIC2_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_DMIC2)
#define RT715_SET_GAIN_DMIC3_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_DMIC3)
#define RT715_SET_GAIN_DMIC3_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_DMIC3)
#define RT715_SET_GAIN_DMIC4_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_DMIC4)
#define RT715_SET_GAIN_DMIC4_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_DMIC4)
#define RT715_SET_GAIN_MIC1_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_MIC1)
#define RT715_SET_GAIN_MIC1_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_MIC1)
#define RT715_SET_GAIN_MIC2_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_MIC2)
#define RT715_SET_GAIN_MIC2_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_MIC2)
#define RT715_SET_GAIN_LINE1_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_LINE1)
#define RT715_SET_GAIN_LINE1_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_LINE1)
#define RT715_SET_GAIN_LINE2_L\
	(RT715_SET_AMP_GAIN_MUTE_L | RT715_LINE2)
#define RT715_SET_GAIN_LINE2_H\
	(RT715_SET_AMP_GAIN_MUTE_H | RT715_LINE2)
#define RT715_SET_DMIC1_CONFIG_DEFAULT1\
	(RT715_VERB_SET_CONFIG_DEFAULT1 | RT715_DMIC1)
#define RT715_SET_DMIC2_CONFIG_DEFAULT1\
	(RT715_VERB_SET_CONFIG_DEFAULT1 | RT715_DMIC2)
#define RT715_SET_DMIC1_CONFIG_DEFAULT2\
	(RT715_VERB_SET_CONFIG_DEFAULT2 | RT715_DMIC1)
#define RT715_SET_DMIC2_CONFIG_DEFAULT2\
	(RT715_VERB_SET_CONFIG_DEFAULT2 | RT715_DMIC2)
#define RT715_SET_DMIC1_CONFIG_DEFAULT3\
	(RT715_VERB_SET_CONFIG_DEFAULT3 | RT715_DMIC1)
#define RT715_SET_DMIC2_CONFIG_DEFAULT3\
	(RT715_VERB_SET_CONFIG_DEFAULT3 | RT715_DMIC2)
#define RT715_SET_DMIC1_CONFIG_DEFAULT4\
	(RT715_VERB_SET_CONFIG_DEFAULT4 | RT715_DMIC1)
#define RT715_SET_DMIC2_CONFIG_DEFAULT4\
	(RT715_VERB_SET_CONFIG_DEFAULT4 | RT715_DMIC2)
#define RT715_SET_DMIC3_CONFIG_DEFAULT1\
	(RT715_VERB_SET_CONFIG_DEFAULT1 | RT715_DMIC3)
#define RT715_SET_DMIC4_CONFIG_DEFAULT1\
	(RT715_VERB_SET_CONFIG_DEFAULT1 | RT715_DMIC4)
#define RT715_SET_DMIC3_CONFIG_DEFAULT2\
	(RT715_VERB_SET_CONFIG_DEFAULT2 | RT715_DMIC3)
#define RT715_SET_DMIC4_CONFIG_DEFAULT2\
	(RT715_VERB_SET_CONFIG_DEFAULT2 | RT715_DMIC4)
#define RT715_SET_DMIC3_CONFIG_DEFAULT3\
	(RT715_VERB_SET_CONFIG_DEFAULT3 | RT715_DMIC3)
#define RT715_SET_DMIC4_CONFIG_DEFAULT3\
	(RT715_VERB_SET_CONFIG_DEFAULT3 | RT715_DMIC4)
#define RT715_SET_DMIC3_CONFIG_DEFAULT4\
	(RT715_VERB_SET_CONFIG_DEFAULT4 | RT715_DMIC3)
#define RT715_SET_DMIC4_CONFIG_DEFAULT4\
	(RT715_VERB_SET_CONFIG_DEFAULT4 | RT715_DMIC4)

#define RT715_MUTE_SFT					7
#define RT715_DIR_IN_SFT				6
#define RT715_DIR_OUT_SFT				7

enum {
	RT715_AIF1,
	RT715_AIF2,
	RT715_AIFS,
};

int rt715_io_init(struct device *dev, struct sdw_slave *slave);
int rt715_init(struct device *dev, struct regmap *sdw_regmap,
	struct regmap *regmap, struct sdw_slave *slave);

int hda_to_sdw(unsigned int nid, unsigned int verb, unsigned int payload,
	       unsigned int *sdw_addr_h, unsigned int *sdw_data_h,
	       unsigned int *sdw_addr_l, unsigned int *sdw_data_l);
int rt715_clock_config(struct device *dev);
#endif /* __RT715_H__ */
