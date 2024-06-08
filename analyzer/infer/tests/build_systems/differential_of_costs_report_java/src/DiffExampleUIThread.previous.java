/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
 
import android.support.annotation.UiThread;

// This class has the following costs:
// 3 constant, 1 linear
// constructor: constant
// f1: linear
// f2: constant
// f3: constant

public class DiffExampleUIThread {

  @UiThread
  public void f1(int x) {
    for (int i = 0; i < x; i++) {}
  }


  @UiThread
  public int f2(int x) {
     return x+1;
  } 


  @UiThread
  public int f3(int x) {
   return f2(x);
}

}
