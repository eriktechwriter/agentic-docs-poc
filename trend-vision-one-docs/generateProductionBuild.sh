#!/bin/bash

# Step 1: Try to run build command
echo "Step 1: Running build command..."

BUILD_SUCCESS=false

# Try npm run build first
if command -v npm >/dev/null 2>&1; then
    echo "Trying npm run build..."
    if npm run build; then
        BUILD_SUCCESS=true
    fi
fi

# If npm failed or doesn't exist, try bun
if [ "$BUILD_SUCCESS" = false ]; then
    if command -v bun >/dev/null 2>&1; then
        echo "npm run build failed or not available. Trying bun run build..."
        if bun run build; then
            BUILD_SUCCESS=true
        fi
    fi
fi

# If neither worked, exit
if [ "$BUILD_SUCCESS" = false ]; then
    echo "Error: Neither 'npm run build' nor 'bun run build' commands are available or working."
    exit 1
fi

echo "Build completed successfully."

# Step 2: Check if target folder exists
TARGET_DIR="./productionBuild/hc_en/documentation/article"
echo "Step 2: Processing target directory: $TARGET_DIR"

if [ -d "$TARGET_DIR" ]; then
    echo "Target directory exists. Deleting its contents..."
    # Use find to safely delete contents, handling empty directories
    find "$TARGET_DIR" -mindepth 1 -delete 2>/dev/null || {
        echo "Error: Failed to delete contents of $TARGET_DIR"
        exit 1
    }
else
    echo "Target directory does not exist. Creating it..."
    mkdir -p "$TARGET_DIR" || {
        echo "Error: Failed to create directory $TARGET_DIR"
        exit 1
    }
fi

# Step 3: Copy docs to target directory
SOURCE_DIR="./build"
echo "Step 3: Copying contents from $SOURCE_DIR to $TARGET_DIR"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Check if source directory has contents
if [ -z "$(ls -A "$SOURCE_DIR" 2>/dev/null)" ]; then
    echo "Warning: Source directory '$SOURCE_DIR' is empty. Nothing to copy."
else
    # Copy contents
    cp -r "$SOURCE_DIR"/* "$TARGET_DIR"/ || {
        echo "Error: Failed to copy contents from $SOURCE_DIR to $TARGET_DIR"
        exit 1
    }
    echo "Successfully copied contents from $SOURCE_DIR to $TARGET_DIR"
fi

# Step 4: Create zip file with productionBuild contents
PRODUCTION_DIR="./productionBuild"
ZIP_NAME="trend-vision-one-docs-production-build.zip"
echo "Step 4: Creating zip file: $ZIP_NAME"

# Check if zip command exists
if ! command -v zip >/dev/null 2>&1; then
    echo "Error: 'zip' command not found. Please install zip utility."
    exit 1
fi

# Check if productionBuild directory exists
if [ ! -d "$PRODUCTION_DIR" ]; then
    echo "Error: Production build directory '$PRODUCTION_DIR' does not exist."
    exit 1
fi

# Remove existing zip file if it exists
if [ -f "$ZIP_NAME" ]; then
    echo "Removing existing zip file..."
    rm "$ZIP_NAME" || {
        echo "Error: Failed to remove existing zip file '$ZIP_NAME'"
        exit 1
    }
fi

# Create zip file with contents of productionBuild folder
# Using -r for recursive and -q for quiet mode
cd "$PRODUCTION_DIR" && zip -rq "../$ZIP_NAME" . || {
    echo "Error: Failed to create zip file '$ZIP_NAME'"
    exit 1
}

# Return to original directory
cd - >/dev/null

# Verify zip file was created
if [ -f "$ZIP_NAME" ]; then
    ZIP_SIZE=$(du -h "$ZIP_NAME" | cut -f1)
    echo "Successfully created zip file: $ZIP_NAME (Size: $ZIP_SIZE)"
else
    echo "Error: Zip file was not created successfully."
    exit 1
fi

echo "Script completed successfully!"