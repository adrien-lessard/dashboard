import QtQuick 2.9

import "Theme.js" as Theme;

Column {
    id: additionalPIDs
    anchors.left: parent.left
    anchors.right: parent.right

    function uint32(value) {
    	return "0x" + ("0x0000000" + value.toString(16)).toUpperCase().substr(-8)
    }

    // PID PID_SUPPORT00
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "PID_SUPPORT00"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: uint32(applicationData.support00)
            font: fixedFont
        }
    }

    // PID MIL_CODE
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "MIL_CODE"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: uint32(applicationData.milCode)
            font: fixedFont
        }
    }

    // PID FUEL_STATUS
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "FUEL_STATUS"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: uint32(applicationData.fuelStatus)
            font: fixedFont
        }
    }

    // PID ENGINE_LOAD
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "ENGINE_LOAD"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.engineLoad).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID COOLANT_TEMP
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "COOLANT_TEMP"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.coolantTemp)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "°C"
        }
    }

    // PID STFT_BANK1
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "STFT_BANK1"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.stftB1).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID LTFT_BANK1
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "LTFT_BANK1"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.ltftB1).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID ENGINE_RPM
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "ENGINE_RPM"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.rpm).toFixed(0)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "RPM"
        }
    }

    // PID VEHICLE_SPEED
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "VEHICLE_SPEED"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.speed)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "km/h"
        }
    }

    // PID TIMING_ADV
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "TIMING_ADV"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.timingAdv).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "°"
        }
    }

    // PID INT_AIR_TEMP
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "INT_AIR_TEMP"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.intAirTmp)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "°C"
        }
    }

    // PID MAF_AIR_FLOW
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "MAF_AIR_FLOW"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.airFlow).toFixed(2)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "g/s"
        }
    }

    // PID THROTTLE_POS
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "THROTTLE_POS"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.throttle).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID OXY_SENSORS1
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "OXY_SENSORS1"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: uint32(applicationData.oxySensors)
            font: fixedFont
        }
    }

    // PID B1S1_O2_V
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "B1S1_O2_V"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.b1s1).toFixed(3)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "V"
        }
    }

    // PID B1S1_O2_P
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "B1S1_O2_P"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.b1s1p).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID B1S2_O2_V
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "B1S2_O2_V"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.b1s2).toFixed(3)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "V"
        }
    }

    // PID B1S2_O2_P
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "B1S2_O2_P"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: Number(applicationData.b1s2p).toFixed(1)
            font: fixedFont
        }
        Text {
            color: Theme.txColor
            text: "%"
        }
    }

    // PID OBD_STD
    Row {
        Text {
            width: 150
            color: Theme.txColor
            text: "OBD_STD"
        }
        Text {
            width: 150
            color: Theme.txColor
            text: uint32(applicationData.obdStd)
            font: fixedFont
        }
    }
}
