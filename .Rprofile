source("renv/activate.R")
local({

  # Add local library to .libPaths
  old.libs =.libPaths()
  new.libs = c("C:/data/R/library",old.libs)
  .libPaths(new.libs)
  # Add data libraries for commonly used packages.
  Sys.setenv(R_READABS_PATH = "c:/data/r/data/abs")
  Sys.setenv(healthyAddress.data_dir = "c:/data/r/data/healthyAddress")
  Sys.setenv(
    PATH =
      paste(Sys.getenv("PATH"),

            "C:\\Program Files\\Git\\bin",
            "C:\\Program Files\\Git\\cmd",
            "c:\\Program Files\\rtools44\\x86_64-w64-mingw32.static.posix\\bin",
            "c:\\Program Files\\rtools44\\usr\\bin;C:\\Program Files\\R\\R-4.4.1\\bin\\x64",
            sep = ";" ))
})
