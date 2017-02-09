/*
 * BQ40Z60 Driver
 * Cambridge University Spaceflight
 */

#ifndef BQ40Z60_H_
#define BQ40Z60_H_

#include "ch.h"
#include "hal.h"

typedef struct {
  I2CDriver *i2c;
  i2caddr_t address;
} BQ40Z60Config;

typedef struct {
  BQ40Z60Config config;
} BQ40Z60;

uint8_t bq40z60_init(BQ40Z60 *bq, I2CDriver *i2c, i2caddr_t address);

uint8_t bq40z60_set_charger_enabled(BQ40Z60 *bq, uint8_t enabled);
uint8_t bq40z60_is_charger_enabled(BQ40Z60 *bq, uint8_t *enabled);

uint8_t bq40z60_get_cell_voltages(BQ40Z60 *bq, float *batt1, float *batt2);
uint8_t bq40z60_get_current(BQ40Z60 *bq, int16_t *ma);
uint8_t bq40z60_get_run_time_to_empty(BQ40Z60 *bq, uint16_t *mins);
uint8_t bq40z60_get_rsoc(BQ40Z60 *bq, uint8_t *percent);

uint8_t bq40z60_is_discharging(BQ40Z60 *bq, bool *status);

uint8_t bq40z60_get_charge_voltage(BQ40Z60 *bq, uint16_t *mv);
uint8_t bq40z60_get_charge_current(BQ40Z60 *bq, uint16_t *ma);

#endif /* BQ40Z60_H_ */
