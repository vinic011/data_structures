if(EXISTS "/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/labSSPtests[1]_tests.cmake")
  include("/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/labSSPtests[1]_tests.cmake")
else()
  add_test(labSSPtests_NOT_BUILT labSSPtests_NOT_BUILT)
endif()
