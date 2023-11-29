#!/bin/bash
# SPDX-FileCopyrightText: 2023 Yuta Sekino
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
echo "Output: ${out}"
[ "${out}" = "15,-15" ] || ng ${LINENO}

out=$(echo -e "1\n2\n-1\n0.1" | python3 plus) #マイナスと小数点を含めてテスト
echo "Output: ${out}"
[ "${out}" = "2.1,-2.1" ] || ng ${LINENO}

### 例外処理 ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "$res" = 0 ] && echo OK        # &&（AND記号）は左側が成功すると右側を実行
exit $res
