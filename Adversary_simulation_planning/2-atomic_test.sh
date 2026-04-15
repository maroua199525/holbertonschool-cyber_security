#!/bin/bash
TECHNIQUE_ID="T1083"
TECHNIQUE_NAME="File and Directory Discovery"
RESULTS_FILE="atomic_results.txt"
LOG_FILE="atomic_log.txt"
STOP_FLAG="stop_test.flag"

# Check for stop flag before doing anything
if [ -f "$STOP_FLAG" ]; then
    echo "stop_test.flag detected. Aborting simulation."
    echo "Remove the flag file to allow execution."
    exit 1
fi

# Print technique info
echo "MITRE ATT&CK Techniqe: $TECHNIQUE_ID - $TECHNIQUE_NAME"

# Log start time
START_TIME=$(date "+%Y-%m-%d %H:%M:%S")
echo "Start time: $START_TIME"
echo "[$START_TIME] START - $TECHNIQUE_ID - $TECHNIQUE_NAME" >> "$LOG_FILE"

# Run simulation
echo "Running simulation..."
find /home -maxdepth 3 2>/dev/null > "$RESULTS_FILE"
ls -la /tmp >> "$RESULTS_FILE"
find /etc -maxdepth 1 -type f 2>/dev/null >> "$RESULTS_FILE"

# Log end time
echo "Output saved to $RESULTS_FILE"
END_TIME=$(date "+%Y-%m-%d %H:%M:%S")
echo "End time: $END_TIME"
echo "[$END_TIME] END   - $TECHNIQUE_ID - $TECHNIQUE_NAME" >> "$LOG_FILE"

echo "Simulation complete. Review $LOG_FILE for details."
