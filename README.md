# MDT Integration for FiveM

A comprehensive suite of in-game integrations for FiveM role-playing servers, designed to work seamlessly with [Tommy's CAD/MDT](https://github.com/tommy141x/CAD-MDT) system.

## Features

### 🚨 Call Overlay System
Real-time call information displayed directly in-game, keeping officers informed without breaking immersion.

### 🗺️ Live Map Integration
Interactive mapping system providing enhanced situational awareness and real-time positioning data.

### 🚔 Automatic License Plate Recognition (ALPR)
Advanced plate scanning system for efficient vehicle tracking and identification.

### 📡 Radar System Support
Compatible with multiple radar systems including:
- **Wraith ARS 2X** - Realistic police radar with dual-antenna tracking
- **RS9000** - Alternative radar system integration

## Prerequisites

- [Tommy's CAD/MDT System](https://github.com/tommy141x/CAD-MDT)
- FiveM Server (running and configured)

## Installation

### Step 1: Download
```bash
git clone https://github.com/tommy141x/mdt-integration.git
```

### Step 2: Install Core Components

#### MDT Overlay
1. Copy `mdt_overlay` to your FiveM resources folder
2. Configure `config.php` with your CAD/MDT system details
3. Add `ensure mdt_overlay` to your server.cfg

#### Live Map Integration
1. Copy `mdt_livemap` to your FiveM resources folder
2. Configure `sv_livemap.lua` with your server settings
3. Add `ensure mdt_livemap` to your server.cfg

### Step 3: Radar System Integration (Optional)

#### Option A: Wraith ARS 2X
1. Copy `wk_wars2x` to your FiveM resources folder
2. Configure `wk_wars2x/nui/radar.js` for MDT integration
3. Add `ensure wk_wars2x` to your server.cfg

#### Option B: RS9000
1. Copy `rs9000` to your FiveM resources folder
2. Configure `rs9000/nui/index.js` for MDT integration
3. Add `ensure rs9000` to your server.cfg


## License

This project is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. See the [LICENSE](LICENSE) file for details.
