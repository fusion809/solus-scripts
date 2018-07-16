#!/usr/bin/env python3
from i3pystatus import Status
from collections import defaultdict
from string import Formatter
from i3pystatus.weather import weathercom
from i3pystatus import IntervalModule

status = Status()

status.register("shell",
    command="/usr/local/bin/zshn",
    color="#FDADB6",
    interval=300)

status.register("shell",
    command="/usr/local/bin/vscoden",
    color="#0FC0FF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/vimn",
    color="#AACCFF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/adeptn",
    color="#FFCF76",
    interval=300)

status.register("shell",
    command="/usr/local/bin/subln",
    color="#FFFF44",
    interval=300)

status.register("shell",
    command="/usr/local/bin/spglibn",
    color="#F3C200",
    interval=300)

status.register("shell",
    command="/usr/local/bin/snapdgn",
    color="#33A0F0",
    interval=300)

status.register("shell",
    command="/usr/local/bin/snapdn",
    color="#AFAFEF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/pymoln",
    color="#02F5AC",
    interval=300)

status.register("shell",
    command="/usr/local/bin/ostreen",
    color="#FF9F9F",
    interval=300)

status.register("shell",
    command="/usr/local/bin/oscn",
    color="#FFFF00",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openrayn",
    color="#AA9F9F",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openrauran",
    color="#F3AC56",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openragn",
    color="#9FCF9F",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openradn",
    color="#CAF20F",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openracn",
    color="#FF669F",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openrabn",
    color="#FFCCAA",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openra2n",
    color="#FAB0D2",
    interval=300)

status.register("shell",
    command="/usr/local/bin/openran",
    color="#FFAA00",
    interval=300)

status.register("shell",
    command="/usr/local/bin/obss",
    color="#44EF4F",
    interval=1200)

status.register("shell",
    command="/usr/local/bin/obsd",
    color="#FFAACC",
    interval=300)

status.register("shell",
    command="/usr/local/bin/obsf",
    color="#E8EF8E",
    interval=1200)

status.register("shell",
    command="/usr/local/bin/openbabeln",
    color="#F32CF5",
    interval=300)

status.register("shell",
    command="/usr/local/bin/netbeansn",
    color="#AAFFFF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/molen",
    color="#F3C200",
    interval=300)

status.register("shell",
    command="/usr/local/bin/libmsymn",
    color="#33F233",
    interval=300)

status.register("shell",
    command="/usr/local/bin/komodon",
    color="#3FCAFF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/jucippn",
    color="#F9B999",
    interval=300)

status.register("shell",
    command="/usr/local/bin/jmoln",
    color="#A2F412",
    interval=300)

status.register("shell",
    command="/usr/local/bin/gsoftn",
    color="#FF76DD",
    interval=300)

status.register("shell",
    command="/usr/local/bin/flatn",
    color="#4EC756",
    interval=300)

status.register("shell",
    command="/usr/local/bin/dtermn",
    color="#FAE396",
    interval=300)

status.register("shell",
    command="/usr/local/bin/codeliten",
    color="#88FFFF",
    interval=300)

status.register("shell",
    command="/usr/local/bin/avogadroln",
    color="#F3FF22",
    interval=300)

status.register("shell",
    command="/usr/local/bin/avogadron",
    color="#F3C200",
    interval=300)

status.register("shell",
    command="/usr/local/bin/atomn",
    color="#FFAA00",
    interval=300)

status.register("shell",
    command="/usr/local/bin/0adn",
    color="#AAFF0F",
    interval=300)

status.run()
