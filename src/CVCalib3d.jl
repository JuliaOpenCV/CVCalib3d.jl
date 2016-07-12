module CVCalib3d

using LibOpenCV
using CVCore
using Cxx

libopencv_calib3d = LibOpenCV.find_library_e("libopencv_calib3d")
try
    Libdl.dlopen(libopencv_calib3d, Libdl.RTLD_GLOBAL)
catch e
    warn("You might need to set DYLD_LIBRARY_PATH to load dependencies proeprty.")
    rethrow(e)
end

cxx"""
#include <opencv2/calib3d.hpp>
"""

end # module
