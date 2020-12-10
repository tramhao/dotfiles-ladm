#!/usr/bin/env python3

from io import StringIO

import pandas as pd
try:
        from libqtile.command import Client  # old
except ImportError:
        from libqtile.ipc import find_sockfile, Client as IPCClient
        from libqtile.command_interface import IPCCommandInterface
        from libqtile.command_client import InteractiveCommandClient
        def Client():
            return InteractiveCommandClient(IPCCommandInterface(IPCClient(find_sockfile())))

if __name__ == '__main__':
        c = Client()
        stream = StringIO(c.display_kb())
        df = pd.read_fwf(stream).drop(0)
         # do whatever you want, e.g. df.to_csv, df.to_json, ...
#        with pd.option_context('display.max_rows',None,'display.max_columns',None):
        print(df.to_string())
