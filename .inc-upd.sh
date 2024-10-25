#!/bin/bash
# Quick include builder for libraries
# -----------------------------------------------------

# Define the source directories
source_dir_shmea=~/dev/ShmeaDB/Backend/
source_dir_glades=~/dev/glades-ml/Backend/
source_dir_gfx=~/dev/gfxplusplus/Frontend/

# Define the backend and frontend include directories
backend_include_gfx=~/dev/gfxplusplus/include/Backend/
backend_include_glades=~/dev/glades-ml/include/Backend/
backend_include_nnc=~/dev/NNCreator/include/Backend/

frontend_include_nnc=~/dev/NNCreator/include/Frontend/

# Copy header files from source directories to backend include directories
rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_shmea" "$backend_include_gfx"
rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_shmea" "$backend_include_glades"
rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_shmea" "$backend_include_nnc"

rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_glades" "$backend_include_nnc"

rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_gfx" "$frontend_include_nnc"

# Copy header files from source directories to frontend include directories
rsync -a --include '*/' --include '*.h' --exclude '*' "$source_dir_gfx" "$frontend_include_nnc"

