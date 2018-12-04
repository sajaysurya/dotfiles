'''
battery indicator for i3blocks
'''
import numpy as np
from subprocess import check_output
import gi
gi.require_version('Notify', '0.7')
from gi.repository import Notify

def color(percent):
    '''
    to formal colors
    '''
    percent = int(percent)
    if percent < 20:
        return "#FF0000"
    if percent < 50:
        return "#FFCC00"
    return "#FFFFFF"

# stands for charging
FA_LIGHTNING = "<span color='yellow'><span font='FontAwesome'>\uf0e7</span></span>"

# stands for plugged in
FA_FULLBATTERY = "<span font='FontAwesome'>\uf240</span>"

# stands for using battery
FA_BATTERY = "<span font='FontAwesome'>\uf242</span>"

# stands for unknown status of battery
FA_QUESTION = "<span font='FontAwesome'>\uf128</span>"

def main():
    '''
    c-style main code
    '''
    fulltext = ""
    output = check_output(['acpi'], universal_newlines=True)
    percents = []
    states = []

    if not output:
        # stands for no battery found
        fulltext = "<span color='red'><span font='FontAwesome'>\uf00d\uf240</span></span>"
    else:
        # get separate batteries status
        batteries = output.split("\n")

        # extract percentage left
        for battery in batteries:
            if battery != '':
                text = " "
                percent = battery.split(", ")[1].split("%")[0]
                state = battery.split(": ")[1].split(", ")[0]
                percents.append(int(percent))
                states.append(state)

                if state == "Discharging":
                    text += FA_BATTERY + " "
                elif state == "Full":
                    text += FA_FULLBATTERY + " "
                elif state == "Unknown":
                    text += FA_BATTERY + " "
                elif state == "Charging":
                    text += FA_LIGHTNING + " "
                else:
                    text += FA_QUESTION + " "

                if int(percent) < 20:
                    form = '<span font-weight="bold"><span color="{}">{}%</span></span>'
                else:
                    form = '<span color="{}">{}%</span>'
                text += form.format(color(percent), percent)

                fulltext += text

        if (np.mean(percents) < 10) and ("Charging" not in states):
            Notify.init("Low Battery:")
            msg = Notify.Notification.new("Low Battery:",
                                          "Charge laptop immediately",
                                          "dialog-information")
            msg.set_urgency(2)  # critical urgency
            msg.show()
    print(fulltext)


if __name__ == "__main__":
    main()
