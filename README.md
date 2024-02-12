# TWRP Device Tree for Samsung Galaxy A54 5G

The Galaxy A54 5G (codenamed _"a54x"_) is an upper-mid-range smartphone from Samsung.

It was announced and released in March 2023.

## Device specifications

| Feature                      | Specification                                                                  |
| ---------------------------: | :----------------------------------------------------------------------------- |
| Chipset                      | Exynos 1380                                                                    |
| CPU                          | Octa-core (4x2.4 GHz Cortex-A78 & 4x2.0 GHz Cortex-A55)                        |
| GPU                          | Mali-G68 MP5                                                                   |
| Memory                       | 6GB / 8GB RAM (LPDDR4X)                                                        |
| Shipped OS                   | Android 13 (One UI 5.1)                                                        |
| Storage                      | 128GB / 256GB (UFS 2.2)                                                        |
| SIM                          | Single SIM (Nano-SIM, eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)       |
| MicroSD                      | Up to 1TB                                                                      |
| Battery                      | 5000mAh Li-Po (non-removable), 25W fast charge                                 |
| Dimensions                   | 158.2 x 76.7 x 8.2 mm (6.23 x 3.02 x 0.32 in)                                  |
| Display                      | 6.4", 1080 x 2340 pixels, 19.5:9 ratio, Super AMOLED, 120Hz (~403 ppi density) |
| Rear Camera 1 (IMX766)       | 50 MP, f/1.8, (wide), 1/1.56", 1.0µm, PDAF, OIS                                |
| Rear Camera 2 (S5K3L6)       | 12 MP, f/2.2, 123˚ (ultrawide), 1.12µm                                         |
| Rear Camera 3 (GC5035)       | 5 MP, f/2.4, (macro)                                                           |
| Front Camera (IMX616/S5KGD2) | 32 MP, f/2.2, 26mm (wide), 1/2.8", 0.8µm                                       |
| Fingerprint                  | Goodix GW9578 (under display, optical)                                         |
| Sensors                      | Accelerometer, Gyro, Proximity (virtual), Compass, Hall IC, Grip               |
| Extras                       | Dual speakers, NFC, MST                                                        |

## Kernel source 

Available at [https://github.com/BlackMesa123/android_kernel_samsung_s5e8835/tree/sep-15/twrp-12.1](https://github.com/BlackMesa123/android_kernel_samsung_s5e8835/tree/sep-15/twrp-12.1)

## How to build

This device tree was tested and is fully compatible with [minimal-manifest-twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/TeamWin/android_device_samsung_a54x.git -b android-12.1 device/samsung/a54x
```

3. To build:

```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a54x-eng
mka recoveryimage
```

## Copyright

```
#
# Copyright (C) 2024 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
```
