#!/sbin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

while ! test -e "/dev/block/mapper/vendor";
do
  sleep 1;
done;

mkdir -p "/tmp/vendor";
if mount -o ro "/dev/block/mapper/vendor" "/tmp/vendor"; then
  mkdir -m 755 "/vendor/tee";
  mkdir -m 755 "/vendor/tee/driver";

  # Crypto Manager Driver
  cp -p "/tmp/vendor/tee/driver/00000000-0000-0000-0000-53626f786476" \
    "/vendor/tee/driver/00000000-0000-0000-0000-53626f786476";
  # ICCC Driver
  cp -p "/tmp/vendor/tee/driver/00000000-0000-0000-0000-494363447256" \
    "/vendor/tee/driver/00000000-0000-0000-0000-494363447256";
  # KeyMint TA
  cp -p "/tmp/vendor/tee/00000000-0000-0000-0000-4b45594d5354" \
    "/vendor/tee/00000000-0000-0000-0000-4b45594d5354";
  # TZ_ICCC TA
  cp -p "/tmp/vendor/tee/00000000-0000-0000-0000-0053545354ab" \
    "/vendor/tee/00000000-0000-0000-0000-0053545354ab";
  # Gatekeeper TA
  cp -p "/tmp/vendor/tee/00000000-0000-0000-0000-474154454b45" \
    "/vendor/tee/00000000-0000-0000-0000-474154454b45";

  umount "/tmp/vendor";
fi

rm -r "/tmp/vendor";

setprop "crypto.ready" "1";

exit 0;
