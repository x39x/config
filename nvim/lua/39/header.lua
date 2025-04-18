local MIKU = {}
MIKU.a = {
        [[         ⢀⣴⡾⠃⠄⠄⠄⠄⠄⠈⠺⠟⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣶⣤⡀   ]],
        [[       ⢀⣴⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣷  ]],
        [[      ⣴⣿⡿⡟⡼⢹⣷⢲⡶⣖⣾⣶⢄⠄⠄⠄⠄⠄⢀⣼⣿⢿⣿⣿⣿⣿⣿⣿⣿  ]],
        [[     ⣾⣿⡟⣾⡸⢠⡿⢳⡿⠍⣼⣿⢏⣿⣷⢄⡀⠄⢠⣾⢻⣿⣸⣿⣿⣿⣿⣿⣿⣿  ]],
        [[   ⣡⣿⣿⡟⡼⡁⠁⣰⠂⡾⠉⢨⣿⠃⣿⡿⠍⣾⣟⢤⣿⢇⣿⢇⣿⣿⢿⣿⣿⣿⣿⣿  ]],
        [[  ⣱⣿⣿⡟⡐⣰⣧⡷⣿⣴⣧⣤⣼⣯⢸⡿⠁⣰⠟⢀⣼⠏⣲⠏⢸⣿⡟⣿⣿⣿⣿⣿⣿  ]],
        [[  ⣿⣿⡟⠁⠄⠟⣁⠄⢡⣿⣿⣿⣿⣿⣿⣦⣼⢟⢀⡼⠃⡹⠃⡀⢸⡿⢸⣿⣿⣿⣿⣿⡟  ]],
        [[  ⣿⣿⠃⠄⢀⣾⠋⠓⢰⣿⣿⣿⣿⣿⣿⠿⣿⣿⣾⣅⢔⣕⡇⡇⡼⢁⣿⣿⣿⣿⣿⣿⢣  ]],
        [[  ⣿⡟⠄⠄⣾⣇⠷⣢⣿⣿⣿⣿⣿⣿⣿⣭⣀⡈⠙⢿⣿⣿⡇⡧⢁⣾⣿⣿⣿⣿⣿⢏⣾  ]],
        [[  ⣿⡇⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢻⠇⠄⠄⢿⣿⡇⢡⣾⣿⣿⣿⣿⣿⣏⣼⣿  ]],
        [[  ⣿⣷⢰⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣧⣀⡄⢀⠘⡿⣰⣿⣿⣿⣿⣿⣿⠟⣼⣿⣿  ]],
        [[  ⢹⣿⢸⣿⣿⠟⠻⢿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣉⣤⣿⢈⣼⣿⣿⣿⣿⣿⣿⠏⣾⣹⣿⣿  ]],
        [[  ⢸⠇⡜⣿⡟⠄⠄⠄⠈⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟⣱⣻⣿⣿⣿⣿⣿⠟⠁⢳⠃⣿⣿⣿  ]],
        [[   ⣰⡗⠹⣿⣄⠄⠄⠄⢀⣿⣿⣿⣿⣿⣿⠟⣅⣥⣿⣿⣿⣿⠿⠋  ⣾⡌⢠⣿⡿⠃  ]],
        [[  ⠜⠋⢠⣷⢻⣿⣿⣶⣾⣿⣿⣿⣿⠿⣛⣥⣾⣿⠿⠟⠛⠉             ]],
}

MIKU.b = {
        [[⢰⡟⣡⡟⣱⣿⡿⠡⢛⣋⣥⣴⣌⢿⣿⣿⣿⣿⣷⣌⠻⢿⣿⣿⣿⣿⣿⣿]],
        [[⠏⢼⡿⣰⡿⠿⠡⠿⠿⢯⣉⠿⣿⣿⣿⣿⣿⣿⣷⣶⣿⣦⣍⠻⢿⣿⣿⣿]],
        [[⣼⣷⢠⠀⠀⢠⣴⡖⠀⠀⠈⠻⣿⡿⣿⣿⣿⣿⣿⣛⣯⣝⣻⣿⣶⣿⣿⣿]],
        [[⣿⡇⣿⡷⠂⠈⡉⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣍⡤⣤⣤⣤⡀⠀⠉⠛⠿]],
        [[⣿⢸⣿⡅⣠⣬⣥⣤⣴⣴⣿⣿⢿⣿⣿⣿⣿⣿⣟⡭⡄⣀⣉⡀⠀⠀⠀⠀]],
        [[⡟⣿⣿⢰⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣶⣦⣈⠀⠀⠀⢀⣶]],
        [[⡧⣿⡇⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿]],
        [[⡇⣿⠃⣿⣿⣿⣿⣿⠛⠛⢫⣿⣿⣻⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿]],
        [[⡇⣿⠘⡇⢻⣿⣿⣿⡆⠀⠀⠀⠀⠈⠉⠙⠻⠏⠛⠻⣿⣿⣿⣿⣿⣭⡾⢁]],
        [[⡇⣿⠀⠘⢿⣿⣿⣿⣧⢠⣤⠀⡤⢀⣠⣀⣀⠀⠀⣼⣿⣿⣿⣿⣿⠟⣁⠉]],
        [[⣧⢻⠀⡄⠀⠹⣿⣿⣿⡸⣿⣾⡆⣿⣿⣿⠿⣡⣾⣿⣿⣿⣿⡿⠋⠐⢡⣶]],
        [[⣿⡘⠈⣷⠀⠀⠈⠻⣿⣷⣎⠐⠿⢟⣋⣤⣾⣿⣿⣿⡿⠟⣩⠖⢠⡬⠈⠀]],
        [[⣿⣧⠁⢻⡇⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⠿⠟⠋⠁⢀⠈⢀⡴⠈⠁⠀⠀]],
        [[⠻⣿⣆⠘⣿⠀⠀  ⠀⠈⠙⠛⠋⠉⠀⠀⠀⠀⡀⠤⠚⠁     ]],
}

MIKU.c = {
        [[⠀    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠦⣄⣠⠴⠒⠒⠉⠒⠶⣄⡏⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣠⡞⣡⠀⢠⡀⠀⢦⡀⢹⣷⣼⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠁⣿⠟⣷⣿⢦⡈⣇⠀⢻⣿⣈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡇⣶⣻⣀⠘⣿⣀⣹⣿⣰⣼⡟⣯⠟⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⣿⡿⠿⠋⠉⠋⠛⢿⣿⣿⡇⠈⢦⡸⣾⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠛⣷⣄⠀⠀⠀⠀⣸⠟⠃ ⠀⠈⢷⣩⡻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠹⡄⠈⠙⠒⢤⣴⣾⠉⠁⣀⡀⠀⠀⠀⠹⣟⢮⡳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠀⣿⠀⣀⣴⣿⡏⣀⡬⠟⠁⠈⣆⠀⠀⠀⠘⢧⡉⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⣿⠀⢻⣫⠉⣽⡟⠉⡅⢀⣆⠀⢠⣿⠀⠀⠀⠀⠀⠹⣦⡉⠻⢦⡀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢗⣿⢀⡷⠁⣸⡿⠁⠀⠀⢸⣿⠃⣄⣈⡆⠀⠀⠀⠀⠀⠈⠫⣱⠦⣌⡓⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣇⣾⣿⢟⡇⢀⣿⡇⠀⢀⣰⢸⡌⢿⣿⢻⡟ ⠀⠀⠀    ⠲⢤⣙⣻⠛⠓⠶⢦⡤⣄⣀⡀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣻⣿⠏⣾⠃⢸⢽⡇⠀⡏⠁⡶⠁⠈⣿⣎⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⢤⣀⠈⠻⣄⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣿⠟⠁⡼⠀⣿⠀⡟⢸⡇⢰⠃⢸⠇⠀⠀⢹⣷⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⣄⠘⣧⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣾⠟⠋⠀⣠⡼⢁⣼⣿⢠⣧⢾⡇⠘⡀⠸⡇⠀⠀⠘⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡉⠚⢧⠹⡇⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠖⢋⣽⡿⠥⠖⠚⠉⢁⣴⣾⣿⠃⢈⠀⢸⠇⠀⠁⠀⢳⡀⠀⠀⣿⣿⣽⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀⠘⢧⣷⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⣀⣤⣾⠛⠁⣠⡼⠋⠁⠀⢀⣀⢀⣴⣿⣿⠟⠁⠀⠀⣷⠋⠂⠀⠀⠀⠀⠳⡀⠀⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⠀⢸⠧⠀ ]],
        [[ ⠀⠀⢀⡠⠖⠋⣩⠶⢋⡴⠋⠁⠀⠀⠿⣭⡿⣿⠿⠟⢉⣷⣄⠀⢀⣼⣿⡄⠀⠀⠀⠀⠀⢀⣹⠄⠀⢹⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠐⡧ ]],
        [[ ⠀⠀⣸⣄⣴⣛⣡⠞⠋⠀⠀⠀⠀⠀⠀⠀⣭⣤⣴⣾⣿⣿⣿⣷⣿⣿⣿⣷⣤⣴⣶⣾⣿⣿⣿⣆⠀⢈⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠸⢑ ]],
        [[ ⠀⠰⣏⡿⢫⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣹⠿⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢀ ]],
        [[ ⠀⢀⣿⡵⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⢀⡜⠀⠀⠀⠀⠀⠀⢀⠎ ]],
        [[ ⢠⢸⡟⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡧⠤⢙⠛⠋⠛⠛⠿⠿⢿⡟⠛⠉⠁⠀⠀⠀⠀⠀   ⠀⠀⠀⠀⠀⠀⢀⡼⢀⠀⠄⠀⠀⡀⡀⠀⠀ ]],
        [[ ⢸⣎⡇⠀⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⡀⢰⡅⠀⠀⠀⠀⠀⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⢋⠞⠀⢠⣮⠎⠀⠀⠀ ]],
        [[ ⠀⢿⣷⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣶⣿⣇⠀⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⣠⠋⢀⣴⠟⠁⠀⠀⠀⠀ ]],
        [[ ⠀⠘⣏⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⢹⣻⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⢡⠞⣁⣴⠟⠁⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠸⡄⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⢄⡀⠀⠀⠘⣿⣿⡯⢶⢧⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⢁⣴⠿⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠹⡄⠙⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠢⣄⠈⢿⣿⡯⣝⣾⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⡯⢖⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠹⡄⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⣿⣿⣽⣿⡇⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⢴⣶⠿⠋⠁⣰⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠘⢦⡀⠀⠙⠢⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣻⢿⣿⡍⠑⠒⠒⣒⣾⣷⠿⠛⣋⡵⠚⠁⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠙⠢⣄⡀⠀⠙⠓⠒⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣷⡚⠛⠉⠁⠀⠀⠐⠋⢀⡀⢀⡤⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠋⠛⠛⣹⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣻⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⢿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡏⠸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠁⠀⢹⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡏⠀⠀⠈⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⢼⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⠀⠀⠀⠀⣼⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣿⣿⣿⠀⠀⠀⢀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡆⠀⠀⣾⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣷⠀⠀⠸⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣻⡇⠀⠀⠈⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣟⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
}

MIKU.d = {
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣷⠒⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡀⠀⠀⠀⣀⣀⠀⠀⠀⠀⣠⣴⡾⠟⠋⠁⠀⣾⡇⣷⠀⠀⢀⣀⣀⣤⢤⣤⡤⠤⠤⠄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠈⠉⣉⠥⠖⠲⠍⠒⠉⠀⠀⠐⠉⠁⠒⠿⣿⡇⠀⠀⠀⠀⢹⣇⣿⣴⠞⠁⠀⠀⠘⠃⠤⢀⠀⠀⠀⠀⠀⠉⠛⢐⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⣁⣤⠶⠋⠀⠀⠀⢀⠔⠁⠀⠈⢷⠲⢄⠀⠀⠀⠀⠙⢢⣄⠀⠀⣼⡷⣿⡁⢀⡀⢀⠀⠀⠀⠀⠀⠁⠲⢔⠒⠀⠄⡀⠀⠑⢈⠠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⢏⡞⠁⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⠀⠱⡄⡑⣄⠀⠀⠐⢄⠙⢧⣾⣿⣿⣽⡟⠁⠀⠀⠈⠙⠲⡀⠀⠀⢀⠠⡑⠄⠀⠀⠁⠠⡀⢡⢴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⢀⡿⢑⡟⠀⠀⠀⠀⠀⢠⠃⡀⠀⠀⠀⠀⠀⠀⠸⣶⡀⠳⡀⠀⠀⠱⡈⢿⣿⣿⢾⣇⠀⠀⠀⠀⠀⠀⠘⣆⠈⠀⠂⢈⠀⠁⢄⠀⠀⠈⠢⡆⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⠴⠖⠒⠉⠺⣯⢳⣿⣦⣄⠀⠀⠀⣸⡤⢋⠔⠀⠀⠀⠀⢀⡇⢰⠀⠀⠀⠀⠀⠀⡀⠘⢇⠉⠢⡘⢆⠀⠀⡘⢼⡽⣿⠟⣋⢳⡀⠐⢦⠀⠀⠀⠘⣆⠀⢀⠀⠈⠂⢀⠑⢄⠀⠀⡇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⠾⠃⠁⠀⠀⢀⠔⢉⣉⢙⣷⡿⣷⣿⠿⣒⣤⡯⡾⠁⠀⢠⠀⠀⢀⡼⠀⡾⣴⠈⡅⠀⠀⠀⡇⠠⢸⠉⠉⠘⢮⣦⠄⠹⡈⡟⢞⣷⣌⠒⡜⣦⠀⠳⡀⠀⠀⢹⡆⠀⠀⠄⠀⠀⠁⠀⡑⢔⡰⠈⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠛⠁⢀⡀⠤⠐⢒⣉⢉⡤⠀⠀⠈⢻⣿⣿⣶⢾⡿⣿⠇⡔⢠⠇⠀⢀⠏⡇⣰⣷⡟⠀⡇⢀⠀⠀⡇⠀⣿⠀⣀⣀⣀⢻⣶⠀⣇⢸⠀⢿⣷⡩⠔⡜⣧⡀⠹⡄⠀⠀⢻⢦⠀⢀⠈⠀⠀⠀⠀⠢⡑⢄⠀⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢞⠡⠐⢈⡠⠄⠒⢉⠏⡠⠋⠀⣀⣠⡶⠞⠛⣿⣿⣿⣞⣽⡜⢠⡞⠀⠀⡼⣸⢲⡟⢸⡇⢰⢧⠈⡆⢰⠃⢠⣧⣿⣿⣿⣟⢻⣿⡆⣸⡬⡇⠘⣿⣯⢲⢈⠜⡷⡀⠸⡄⠀⠘⣧⢣⠀⠀⠐⠈⠀⠀⠀⢻⢦⡘⢆⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠋⢁⠄⠂⠁⡠⠀⢁⡮⠊⢀⣴⡺⠛⠁⠀⢀⡤⠿⣿⣿⣿⡾⢀⣾⠇⠠⡼⣱⢻⡜⣠⣿⡷⣾⣾⢀⡧⡞⠀⣼⡏⠸⣏⣭⣱⣀⢻⢣⣿⡷⡇⠀⣿⠸⡌⢧⢈⢳⠘⢄⠘⡄⠀⢹⣆⢣⠀⠠⠀⢀⠀⠀⠘⣏⢻⡄⠣⡚⠵⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠁⠄⠊⠀⢀⠔⠀⠀⣀⠎⠀⣰⠛⠁⠀⠀⢀⡴⠋⠀⠀⣿⣿⣿⡇⣼⣿⢀⣷⣡⣿⢸⣿⢿⣏⠼⠛⣦⢟⣿⡠⢺⡟⠀⠀⠀⠀⠀⠀⡞⣿⢻⣿⡃⢀⣿⠂⢹⡌⠇⠘⡆⠈⢢⠹⡀⠈⣯⢃⢣⠀⠀⠀⡀⠀⠀⡿⡌⢿⡆⠘⣆⠀⠀⠙⠒⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠌⢁⢴⠏⠀⠀⠐⠁⢀⠤⠞⠁⠴⠋⠀⠀⠀⠀⡰⠋⠀⠀⠠⠀⣿⣷⣿⣶⠉⣧⢸⣷⣿⣿⣞⠛⠴⠻⠐⠈⢀⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠐⠵⣿⣜⡟⠠⣼⡿⠀⠈⣷⠘⠀⣧⠀⠀⠱⣷⠀⢻⡼⣯⡆⠀⠀⠀⠀⠀⢣⢹⢎⡜⢆⠀⡕⢄⠀⠀⠀⠈⠑⠢⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠁⠔⠁⡟⢀⠀⠁⣠⡦⠁⠂⠀⠈⠀⠀⠀⠀⡠⠊⠀⢀⠀⠂⠀⢈⣽⢯⡟⢻⡀⢸⣿⣿⣿⣿⣿⣲⣤⡀⠀⠀⠁⠀⠀⠀⠀⡀⢤⣤⣤⡀⠀⠀⠀⣿⣿⣔⠡⠋⠀⠀⠀⢹⡀⠀⡇⠀⠀⠀⠸⡆⢸⣷⣏⣿⠀⠀⠀⠀⠀⣸⢸⠈⢻⡀⡆⠘⡄⠢⡀⠀⠀⠀⠀⠀⠘⢦⢄⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⢠⠊⠀⢸⡇⠀⢀⣞⠟⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠠⠀⠀⠄⢈⣾⢯⠞⠀⠈⠂⠀⠻⣿⣿⣿⣿⣷⣌⠙⢦⡀⠀⠀⠀⢰⠋⠉⠀⠀⣰⠁⠀⠀⡜⠙⠉⠀⠀⠀⠀⠀⠀⠸⠁⠠⡇⠀⠀⠀⠀⢻⠘⡟⣹⢸⡆⠀⡀⠂⠀⣧⢸⠀⠀⢷⢱⠀⢹⣀⠘⢤⡀⠀⠀⠀⠀⠀⠐⢈⠢⡀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡌⢠⠁⠀⡐⢹⠀⢠⣿⠏⠀⠀⠀⠀⠀⠀⢀⠔⠃⠀⠀⢀⠀⠄⠂⢀⡾⣣⠋⠀⠀⠀⠀⠀⠀⠈⠿⢿⣿⣿⣿⣷⣬⡇⠀⠀⠀⠀⠁⠒⠒⠂⠁⠀⡠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⣆⠀⢸⠁⠀⠀⠀⠀⠘⣠⠁⣯⠘⣧⢀⡇⠀⢠⠃⣸⠀⠀⠈⣿⡀⠘⡝⢆⠀⠲⡀⠀⠀⠀⠀⠀⠀⠑⡈⢄⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⢀⠃⢀⠊⠀⢸⢀⣿⠂⠀⡌⠐⠀⠀⠀⠠⠊⠀⠀⠀⠠⠀⠀⡀⣠⣟⠝⠅⠀⠀⠀⠀⠀⠀⠀⢀⠈⢂⠈⠉⠉⠉⠙⠚⢻⢿⡦⣀⡀⠀⠀⠀⢀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⢡⠁⡎⠀⠀⠀⠀⠀⢸⣹⠀⢹⠆⡟⡸⠀⢠⡏⠀⣇⠀⠀⢰⢸⠀⠀⡇⠈⢦⠀⠐⡐⠄⠀⠀⠀⠀⠀⠘⡀⢂⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⡌⠠⠁⠀⠀⠈⡟⠁⠀⣸⠀⠀⠀⠀⠀⠔⠀⠀⠀⠌⠀⢀⣴⣾⠷⣇⠌⠀⠀⠀⠀⠀⠀⡠⠊⠀⠀⠈⠉⡒⢤⣦⣤⠐⠚⠀⠉⠢⣀⠉⠁⠊⠁⢻⠢⠀⠀⠀⠀⢀⣀⢀⣀⡠⠃⠈⡸⠀⠀⠀⠀⠀⠀⢾⠃⠀⠘⢸⡟⠁⡠⠃⠀⢸⠁⠀⠀⠆⢸⠄⠀⡇⠀⠀⠣⡀⠘⡄⠢⡀⠀⠀⠀⠀⢰⠀⢇⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢸⢲⡰⠁⠀⠀⠀⣰⠁⠀⢰⠃⠀⠀⠀⢀⠂⠀⠀⡀⠂⢀⡴⣫⣾⠋⢸⠁⠀⠀⠀⠀⠀⠀⢠⠁⠀⠀⠀⠀⠀⠈⠀⢻⡎⢧⠀⠀⠀⠀⠀⢑⢦⣄⢠⡞⠀⠑⡴⣖⠊⠁⠀⠀⠀⠈⠑⢶⠁⠀⠀⠀⡀⢀⢞⠎⠀⠀⣠⠟⣠⠎⠁⠀⠀⠇⠀⠀⡰⠀⡘⠀⠀⡏⠀⠀⠀⢱⡀⠈⡄⠐⠄⠀⠀⠀⠀⡇⠈⡄]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⡜⡜⠀⠀⠀⢀⣼⡏⠀⠀⡀⠀⠀⠀⣠⠣⠂⠀⠀⣀⢔⣩⠞⢡⠇⠀⢼⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠈⣏⠈⢆⠀⢀⡠⠊⣰⣟⡾⠚⠿⣆⠀⢱⡘⣆⠀⠀⠀⠀⠀⠀⠀⠈⣤⣀⣀⠔⠡⠏⢒⡲⢝⠥⠊⠀⠀⠀⠀⢸⠀⠀⡐⠀⣠⠁⠀⢰⠃⠀⠀⠀⠀⢷⡀⠘⡀⠈⢂⠀⠀⠀⢁⠀⡇]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⢠⡵⡇⠀⠀⠠⣻⢳⠁⠀⢀⠀⠀⠀⣰⢧⠃⠀⣠⢖⡵⢛⠡⠂⡟⠀⣴⣼⠀⠀⠀⠀⠀⠀⠀⡇⣀⠠⠤⠄⣀⠀⠀⠀⢀⡇⠀⡨⢶⠁⠀⣰⠋⢹⣅⠀⠀⢡⠑⡄⢷⠈⢧⡀⠀⠀⠀⠀⠀⠀⠙⠾⣖⡰⠒⠉⣁⣴⠋⠀⠀⠀⠀⠀⣠⢿⠀⠌⢀⡴⠁⠀⣠⠆⠀⠀⠀⠀⠀⢸⡷⠀⢰⠀⠀⠢⠀⠀⢨⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⣼⡇⡇⠀⡰⢡⠏⠀⠀⠀⠄⠀⠀⢲⣏⠎⣠⣾⠷⠛⠀⠁⠀⢸⠄⠀⡏⢻⡀⠀⠀⠀⠀⣠⣴⣿⣾⣷⣶⣶⣦⡕⢄⢀⣿⡕⠊⠀⠈⢧⣰⠃⠀⠀⢹⡖⠖⠚⡇⠈⢢⡆⠀⠡⡀⠀⠀⠀⠀⠀⠀⠀⢀⠜⣹⣾⣿⣦⣤⣤⣤⣠⣄⣴⢃⡗⠒⢊⠉⠀⢀⠔⠃⠀⠀⠀⠀⠀⠀⠀⣷⢣⠀⢃⠀⠀⢂⠀⡔⠀⡀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⡟⡇⢠⠜⠀⡞⠀⠀⠀⠠⠀⠐⢠⡟⠞⣰⡛⠁⠀⠀⠀⠀⢀⣸⣤⣶⣷⣾⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣼⠁⠀⠀⠀⠘⠁⠀⠀⠀⠀⡇⠀⠀⠰⠀⠀⠁⠀⠠⠈⢏⠢⡀⠀⠀⠀⢀⠆⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣁⡠⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⡎⢆⠸⡄⠀⠀⡄⡇⠀⡇]],
        [[ ⠀⠀⠀⠀⠀⠀⢠⡇⠅⡜⠀⢰⠃⠀⠀⠀⠠⠀⠀⣾⡵⠒⠙⠵⣄⠀⢀⡀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⠀⠀⣆⠀⠀⠀⠀⠀⠊⠶⣗⠢⣄⡀⣸⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠱⢸⠀⣧⠀⠀⢱⠃⣠⡇]],
        [[ ⠀⠀⠀⠀⠀⠀⣸⣂⣎⡀⢀⡎⠀⠀⠀⢀⣄⣠⣼⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⢄⠹⡖⢶⣸⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⡇⠀⡀⡇⢸⠑⡀⡌⡐⣿⠁]],
        [[ ⠀⠀⠀⠂⠉⠉⢁⠏⠀⠈⢩⠈⠁⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⡿⠁⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⠀⠅⢘⡆⣌⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢶⣤⣀⠀⠀⡇⠀⢿⢱⣜⣦⡾⡋⣰⠏⠀]],
        [[ ⠀⠀⠀⠀⠀⣠⠂⠀⠄⠠⠁⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠓⠠⠤⢄⣀⡀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⡿⠁⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⡀⢸⢫⣜⢺⡝⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⢋⠉⠹⡀⠀⠀⠀⠈⠻⣶⡇⠀⠘⣟⡟⠉⢢⣸⡟⠀⠀]],
        [[ ⠀⠀⠈⠉⠀⠀⠀⠀⢀⡀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠐⣇⡀⡠⠆⠀⢀⣤⣷⣾⣿⣿⣿⣿⡿⡇⠀⠀⠀⠀⠈⠒⠤⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠄⢀⡇⠀⠀⠀⠀⠀⠀⢁⣏⣷⣎⠿⠼⢓⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⣄⣂⢰⠀⠑⡀⠀⠀⠀⠀⠙⢇⠀⡄⢾⠁⠀⣠⠟⢡⠀⠀]],
        [[ ⠀⠀⠀⠀⢀⡤⠔⠊⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⡀⠈⠪⡀⣠⣴⣿⣿⣿⣿⣿⣿⣿⠟⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠀⠂⠀⢸⠁⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⢠⠊⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠈⠢⡀⠀⠀⠀⠀⠑⠧⡉⡤⠐⠁⢸⠀⡆⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⢀⣴⠝⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠸⡄⠀⠀⠀⠀⠠⠀⠈⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠙⠳⠖⣂⣄⡀⠈⠐⠂⢤⠈⡄⢡⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⠿⡟⠻⢿⣿⣿⣿⡿⠟⢋⠁⠀⣠⣖⠂⠀⠀⡛⠁⠀⠐⠶⣘⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⣇⣀⠤⠨⠄⠀⠀⠀⠀⠀⠀⠀⣰⠁⠀⠀⠀⠀⡇⠀⠀⠀⠀⢀⠀⣇⡀⢤⡶⠋⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⢿⣏⣿⠀⠉⠁⠀⡇⢸⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣻⠟⠋⠀⠀⣦⠀⠀⠈⠻⣿⣿⣶⣶⣿⣿⣿⣿⢀⠔⠊⠀⠀⠀⠀⠀⠈⠿⢿⣿⣿⠟⠁⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠿⣿⡶⠀⠀⢸⠇⠀⠀⠀⢀⠂⡜⠛⠉⢠⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⢠⡄⠀⡀⠀⢰⡆⠈⢷⡏⠀⠀⠀⠀⡅⢸⠀]],
        [[ ⠀⠀⠀⠀⢊⣵⣾⢿⡹⡏⠀⠀⠀⠀⠀⣻⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⡆⠀⡀⠀⠀⢀⠀⠰⣥⣤⡦⠴⢌⣐⣄⠀⠀⢀⣠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⣿⣄⣀⠀⠀⠀⡼⠀⠀⠀⠀⢁⠌⠀⠀⠀⡇⠠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢠⣾⣿⠀⢠⣿⠀⢸⡞⡄⠈⡇⠀⠀⠀⠀⠇⡈⠀]],
        [[ ⠀⠀⣴⣵⣿⣿⠓⠊⠁⡀⠀⠀⠀⠄⠀⢻⡀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⠁⢨⣿⡄⠀⣿⣎⢆⠹⡉⠀⠀⠀⠀⣀⠤⠒⠁⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠂⢰⠋⠛⠋⠀⠀⠀⡇⠀⠀⠀⡠⠃⠀⠀⠀⢸⠀⠀⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡃⣰⣿⣿⡏⠀⣾⣿⡇⢸⣷⠝⡄⠘⡄⠀⠀⢰⠀⠃⠀]],
        [[ ⠀⠐⢻⡏⠇⠘⣆⠀⠀⢀⠀⠀⠂⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣹⠀⡜⠛⣷⠀⡇⠀⠱⡀⠐⡀⠀⣠⠊⠀⠀⠀⢰⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠁⢀⡏⠀⠀⡀⠠⠐⢸⠀⠀⠀⡜⠀⠀⠀⠀⠀⡠⠔⠉⠀⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⠀⣯⠀⠘⢄⠐⡄⢀⠆⡘⠀⠀]],
        [[ ⠐⠀⢸⡤⠘⢄⠙⣆⠀⠐⡀⠀⠀⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⠀⡇⠀⢹⡀⢧⣀⣀⣘⡆⠘⣴⡇⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⡼⠀⠀⡐⠀⠀⠀⡇⠀⠀⡔⠀⠀⠀⡠⠔⠉⠀⣀⠔⡎⠀⠐⡀⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡄⢸⢀⠇⠀⠉⢁⠎⡐⠀⠀⠀]],
        [[ ⠀⠀⠀⣿⠀⠈⢢⠈⢦⠀⢧⠀⠀⠀⠀⠀⠸⣆⠀⠀⠀⠀⠀⠀⠀⠀⢀⡃⡰⠁⠀⢈⡇⢸⣿⣿⣿⣿⡄⣿⡇⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠁⠀⡐⠀⢀⠈⡸⠀⠀⣰⣀⠠⠔⠉⠀⢀⠔⠉⠘⡀⠘⡀⠀⠈⢤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⠟⠁⠐⠼⡎⠀⠀⢠⠊⠌⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠹⡇⠀⠀⠑⢌⠄⠘⣦⠀⠀⠀⠀⠀⢿⠢⡀⠀⠀⠀⠀⠀⠀⠘⠗⠁⢀⡞⣿⡇⢰⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠑⡀⠀⠈⠀⠀⠀⠀⠀⣰⠃⠀⠄⠀⠄⠂⢠⠃⠀⢼⠏⠀⢀⡀⠤⠒⠀⠀⠀⠀⠈⢀⠐⠄⠀⠎⠈⡟⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⡟⠁⠀⠀⠀⡰⠀⢀⠔⡡⠊⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠘⣄⠀⠀⠀⠑⢄⠹⣇⠀⠀⠀⠀⠈⢆⠈⠢⣀⠀⠀⠀⠀⠀⠀⠀⢸⠁⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠈⠂⡀⠀⠀⠀⢀⡰⠃⠀⡀⠂⠈⢀⢀⠞⢈⠔⠁⠘⡬⠳⠒⠶⠖⠶⠶⣖⣒⡲⠲⠶⢦⣿⣄⡰⠁⠀⠀⠀⠉⠉⠛⠛⠛⠻⠛⠛⠛⢋⠝⠁⠀⡔⠁⠀⢠⡖⡰⢁⠔⡡⠊⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠘⢄⠀⠀⠀⠸⠉⢻⣧⡀⠀⠀⠀⠘⡖⠤⣀⠉⠒⠠⠤⢀⣀⡀⢸⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⡐⠀⠐⠠⣠⣼⣿⠁⠠⠐⠀⠠⠁⢀⣾⠒⠁⡀⠀⠀⣣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠲⠮⠩⣙⣲⣄⡀⠤⠠⠤⣀⣀⡀⢁⡴⠚⠁⠀⢀⠎⠀⣀⣴⠟⣀⠭⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⢃⠀⢷⡐⠄⠀⠀⠀⠘⠄⠀⠈⠉⠑⠂⠒⠀⠀⣏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠔⠀⢠⣴⣿⣿⣿⣿⠀⠄⠀⡁⠐⣠⡞⠈⠀⢰⠁⠀⢠⣿⡈⠳⣀⠈⢋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠒⠤⡀⠈⠒⠄⡀⢀⡠⠜⠁⠀⠀⢀⡰⠥⠤⠊⡠⡣⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠈⢧⡈⠢⡀⠀⠀⠈⢦⡀⠀⠀⠀⠀⠀⠀⢸⡄⢿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⢊⣠⣾⣿⣿⣿⣿⣿⣿⠀⠐⣀⣴⣾⣿⣷⠀⡇⠀⠀⢀⣿⣿⣷⡀⠈⠑⠄⡡⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢢⡬⠕⠊⠁⠀⠀⠀⢀⠴⣁⣀⡠⣔⠬⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢄⠀⢳⡄⠈⠳⢤⡀⠀⠻⡦⣄⡀⠀⠀⠀⢸⠹⡌⢿⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣇⠠⠀⢀⣾⣿⣿⣿⣿⡶⢤⣀⠈⠑⠳⠖⠠⠤⠤⠤⠤⠀⠒⠊⠉⠀⠀⠀⠀⠀⢀⣠⣮⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀⣙⣦⡀⠀⠈⠑⠄⡘⢌⠒⠍⣐⠒⢎⠀⠙⣆⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⠀⣼⣿⣿⣿⣿⡿⣷⡀⠈⠉⠒⠶⠤⢤⣀⣀⢀⣀⣀⣀⡀⡀⢀⣀⣠⠴⠂⠁⢹⣷⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠴⡠⠤⢀⠠⠕⠚⢦⣀⠉⢊⠀⢀⠘⢧⣙⡿⢿⣿⣿⣿⣿⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢰⣿⣿⣿⣿⣿⣿⡿⢡⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠁⠀⠈⢀⠀⠀⠘⠃⡆⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠒⠂⠈⠁⠀⠀⢹⠀⠀⠊⢄⠛⣤⣀⠈⠛⠿⣷⣯⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡃⠆⠀⠀⠀⢰⠁⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

MIKU.e = {
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠠⡐⢬⡹⢃⠦⡑⢆⡒⡀⢜⢦⢣⢇⡦⠘⠬⣗⡲⡄⠈⠻⣯⣳⡽⣸⠵⣆⡌⠠⠀⠠⠐⠢⢢⡐⡄⢢⠠⣀⠀⠀⠀⠀⠀⠀⠀⠂⠔⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⡄⠳⣌⠶⣙⣬⢳⣙⢮⡱⣅⢸⣿⣮⣟⣾⡅⠈⠻⣿⣽⡄⠠⠘⢿⣿⢷⣿⣻⣷⣆⠱⡄⠂⢡⠀⡑⠜⣡⠒⠤⡉⠆⢄⠀⠀⠀⠀⠀⠀⠀⠧⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⢃⢰⢉⡷⣸⡾⣵⣞⣷⣻⣾⣳⣬⢂⣿⣟⣾⡿⣽⠰⣄⠻⣿⣻⡈⣖⡀⠻⣿⣯⣿⢷⣿⣇⢹⡄⢂⣁⠲⢠⢄⠉⠒⠠⠈⠄⢈⠐⠀⠀⠀⠀⠀⠀⠉⢶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢇⡭⢸⡌⣷⣯⢿⣿⣻⣽⣿⣳⣿⢷⡃⣿⣿⢯⣿⡷⢨⢿⣦⠙⣿⣇⢸⣷⣄⠹⣿⣽⡿⣯⣿⡄⢿⡄⠘⠽⣶⣎⠳⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣝⠦⣳⠀⡇⢿⣻⣿⣻⣿⣟⣾⣿⣽⡿⣗⢻⣿⣿⢯⡇⣸⣿⣿⡷⠘⣿⡄⢛⣛⡂⠹⣿⢿⣿⣽⣿⠘⣿⠀⠀⠈⠙⢷⣬⡛⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⣯⢵⠂⢱⠸⣿⣷⡿⣯⣿⢿⣾⣯⣿⢿⢸⣿⣽⣿⠁⠟⣉⣥⣶⣶⡈⢇⠸⣿⣿⣇⠹⣿⣿⣽⣾⡆⣿⣇⠱⢄⡀⠀⠉⠻⣦⡛⣷⣦⡀⠀⠀⡐⠀⠀⠀⠂⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⣧⣏⠧⠈⠄⢿⣷⣿⢿⣻⣿⣟⣾⣟⣿⣹⣿⣯⣿⢠⣿⣿⣿⣿⣿⣷⡌⠀⡿⣿⠟⣆⢹⣿⢯⣿⡇⢻⣿⡄⢌⡐⢅⠠⠀⠀⠙⠷⣝⣻⢷⣤⡀⠀⠀⠀⠀⠂⠀⠀⠀⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⡀⢀⠀⡀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣗⡾⣹⠀⡐⡘⣿⣾⡿⣿⣽⣾⡿⣯⣿⡇⣿⡿⠇⣼⣿⣿⠟⣩⡾⠛⠉⠀⣀⣉⣈⠋⠄⢻⣿⣟⡇⢸⣿⡇⠀⠿⢄⠳⣄⠠⠀⠀⠀⠙⠫⣟⠿⣷⣤⡀⠀⠐⠀⠀⠀⠀⠘⣆⠀⠒⠒⠂⠈⠉⠉⠉⠁⠁⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠠⠀⡄⠀⣿⡿⣞⣳⡀⣧⠠⠸⣿⣽⡿⣯⣷⣿⣟⣷⠃⣿⡟⢸⣿⣿⡇⠞⠋⡀⠂⠉⠀⡀⠈⠙⢷⣆⠈⣿⡿⣟⢸⣿⣿⠈⢤⡀⠀⠈⢳⡄⠠⠀⣀⠀⠀⠉⠓⠭⣟⡷⢦⣀⠀⠀⠀⠀⠈⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⣿⠀⢹⣿⣽⡳⡅⢸⠇⠀⠹⣿⣽⣿⣻⣾⢿⣽⠐⣿⢁⣿⣿⣿⡏⠊⢠⣃⣀⠠⢫⣴⣅⠂⠀⢻⣧⢹⣿⡏⢸⣿⢿⢀⢸⣿⡆⠀⠀⠘⠣⡄⠈⠠⠀⠡⢀⠠⢀⠈⡉⠙⠻⠦⢄⡀⠀⠀⠳⣄⠀⠀⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠄⠀⣿⡄⠄⢿⣟⣳⢏⡀⢼⣧⡁⠹⣿⢾⡿⣽⡿⡏⢸⠏⣼⣿⣿⣿⡟⡀⣿⣿⣿⡇⢻⣿⢿⡆⣠⡄⠿⠈⣿⡇⣾⡿⣿⠘⠀⢿⣷⠀⠀⠀⠀⠙⠢⡄⢀⠀⠂⠐⠀⡁⠐⠡⠂⡄⢀⠀⢁⠂⠀⠈⠢⡄⠃⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⠀⡈⢿⣯⠟⣦⠘⣿⣷⡀⠘⣿⣟⣿⣽⠁⠏⣼⣿⣿⣿⣿⣿⣷⣼⣿⡄⠀⣤⣙⠋⣡⣽⠟⣴⡆⣿⠁⣿⡿⡿⠀⣤⣴⡏⠐⠶⠶⠶⠒⠂⠈⠢⢔⠀⡈⠉⠀⠀⠀⠲⣤⠀⠈⠌⠳⣦⣄⠀⠀⠙⠒⠤⣄⣀⡀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡾⠇⠐⠈⢻⣯⢲⢡⠘⣿⡿⠀⠈⠻⣾⣏⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣦⡛⢿⡿⠟⣡⣾⣿⠅⡿⢰⣿⣟⡇⢀⣿⠿⠁⠀⠠⠀⠀⠀⠀⠀⠀⠀⠑⠠⠒⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣤⡀⠀⠀⠀⠌⡉⠉⠉⠓⠒⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⢹⣷⠀⠀⢀⠹⣏⡆⠇⠈⠀⣾⣀⠀⠹⠆⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣶⣶⣿⣿⣿⣿⠇⢁⢰⣿⣏⠁⠀⠀⠀⣀⣶⣾⣿⣶⣀⠀⠀⠀⠀⠀⠀⠀⠈⠰⠈⠀⠀⠀⠀⠁⠀⠀⠀⠀⠈⠹⣆⠀⠀⠀⠈⠱⠶⣆⣀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⢺⠄⠀⠀⠀⠘⠽⡌⠄⠀⢻⡿⠗⠩⡧⠀⡴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⡜⢸⢿⡈⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⡀⠀⠀⠀⠀⠀⠈⠐⠀⠄⡀⠀⠀⠀⠀⠀⠀⠈⠒⠀⠀⠀⠀⠀⠀⠀⠈]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠫⠄⠀⠀⠀⠀⠙⠌⠄⠘⣿⣆⠰⢄⠁⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢰⠃⣿⢦⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠈⠀⠁⠈⠀⠀⠀⠠⠀⢠⠄⢂⡄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢀⠀⠀⠀⠀⠀⠈⠀⠈⢯⣥⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠃⢀⡿⠂⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠂⠠⢀⠀⠀⠀⠀⠀⠀⠀⠂⠆⠀⡞⡀⠂⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠃⠀⢠⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠁⠂⡀⠄⠀⠀⠀⠀⠀⠀⠁⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀⠀⢀⢨⣇⠀⠸⣿⣿⣿⣿⣿⣿⣿⡿⠀⠸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣂⣔⣿⣿⣿⣟⠇⠀⠀⠀⠀⠀⠀⠀⢌⣿⣿⡄⠀⢸⣿⣿⣿⣿⣿⡿⢡⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⡀⠀⠀⠑⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠭⠉⠛⠛⠿⠿⠿⠛⡡⢀⠀⠂⠀⠀⠀⢠⣾⣾⣿⣿⣇⠀⠘⡿⣿⣿⡿⠟⡀⠿⠃⣴⡀⢀⢸⠂⠄⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⡐⢄⠀⠀⣎⡑⠉⠓⠦⡠⠀⣀⣶⢿⡻⣽⣏⡿⣿⠀⠀⢹⣟⡿⠋⣴⡇⠀⢈⡷⡽⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⡐⢠⠊⡔⠀⠈⡽⣙⠶⣒⠶⣹⢹⡜⣫⡝⣧⢯⣝⡳⡇⠁⠘⢎⡷⢻⡕⠀⢨⠄⢧⡙⡵⡀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠰⡈⡔⠰⠀⠐⢡⠚⠌⡓⠤⠓⡼⡑⠞⡴⢣⢎⡵⡁⠀⠀⢮⡙⠧⠄⠀⢫⡀⠀⡜⠒⡤⠀⠠⠄⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡈⠄⠀⠀⠠⢀⠀⠐⠉⠒⡀⠄⠂⠈⠐⠈⠐⠉⡐⠩⡘⠰⡉⠖⢬⡑⠀⠀⣃⠮⠁⠀⠀⣅⠚⠠⢌⠃⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠄⠂⠄⢀⠈⠈⠔⡠⢂⠀⣀⠀⠁⠄⢁⢈⠈⡀⠐⠀⠀⢈⠀⠀⠀⠌⡀⠂⠐⠂⡁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠐⠀⠂⠐⠠⠀⢀⠀⠁⠀⠈⠐⡈⠢⠌⠒⠈⠤⠁⠘⠀⠀⠀⡁⠈⠠⠄⠡⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

MIKU.f = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣤⣤⣤⣤⣀⣀⠀⢀⣻⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⣤⡾⠛⠋⠿⢾⣛⠉⠉⠀⠘⠿⢿⣿⣿⣿⡿⢮⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣼⣿⢷⢿⣡⠽⠿⠿⠿⠿⢿⡿⢿⠿⠿⠿⠿⠿⣿⣿⡿⠀⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⢛⣿⠗⠶⣳⣖⣒⣺⣿⡿⢿⣟⣳⡷⣾⣛⡟⠿⠻⠆⢸⣾⣞⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⣿⡷⠶⠶⠴⠤⠴⣵⣿⣿⠦⠤⠤⠤⠴⠥⣿⣷⣿⣾⣷⣾⠦⠤⠤⠤⠬⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣙⣾⣉⣋⣿⣉⠉⣍⣙⣸⣿⣍⠉⣉⣉⣉⣉⣙⣽⣯⠏⣉⣿⡍⢉⣉⣉⣉⣀⣣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣙⣿⠙⠛⠛⣿⠛⢦⡒⠛⢻⣿⣽⣷⣿⡛⠿⠛⠛⢻⣿⣶⣿⣿⣷⡐⠒⠒⠒⠒⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⢻⣿⣿⠻⠿⠿⣿⣧⣬⠻⣮⡿⢿⠋⣿⣿⡿⡾⠿⠿⣿⣿⣿⣿⣿⣿⠋⠽⠿⠿⠿⠿⠟⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⣾⢿⣿⣦⣤⣶⣿⣿⣿⣆⠈⠻⣾⠃⢘⣿⣟⣿⣆⣰⣿⣿⣿⣿⣿⡿⣶⡀⠀⠀⣠⣤⣀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣠⣿⣆⡀⣠⣿⣿⣿⢿⡆⠀⠈⠀⠀⠀⠈⠁⢱⣶⣿⣿⢿⣾⠋⠀⠰⣄⠀⠀⠀⠀⠀⠀⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣌⠈⣻⡍⠁⣹⡍⠉⠙⣿⡍⠉⠁⡀⠀⠀⠀⠀⠀⠀⢈⣭⢳⣼⠈⠁⠀⠀⠐⣇⠀⠀⠀⠀⠈⠀⠀⢈⣆⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠙⠻⠟⠉⣿⣿⣻⡿⢝⡏⢻⣄⠀⠀⠤⠤⠤⠀⠀⢀⣼⣿⠿⣝⡆⠀⠀⠀⠀⠻⡛⠛⠛⠛⠛⠛⠛⠛⠙⡄⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⡶⠶⠶⣿⣿⣿⣿⠛⠻⣷⠀⠿⠟⠲⣤⣀⡁⠀⠰⡿⣿⢿⣧⠀⠙⠆⠀⠀⠀⠀⣿⠶⠶⠶⠶⠶⠶⠶⢶⢿⡆⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⢤⣤⣴⣤⣶⣧⣾⡇⠀⠀⠀⠀⠀⠀⢀⣤⡾⡿⠶⠾⠴⠟⠒⣻⣆⡀⠀⠀⠀⠀⠀⢿⣦⡤⢤⢤⣤⣴⣦⣦⡜⢧⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢁⣈⣁⣉⣉⣛⣉⣹⡅⠀⠀⢀⣀⣀⣠⡼⣻⣿⠀⠀⠀⠀⢀⣴⠾⠂⠙⠛⠛⢤⡀⠀⢸⣧⣀⣀⣀⣀⣉⣉⣉⣁⣘⣆⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠇⠘⠃⠚⠛⠻⠟⠛⣿⠃⢀⣴⠋⠀⢁⣽⣿⣿⣿⡷⢠⣤⣴⠟⠁⠀⠀⠀⠀⠀⠘⣧⠀⠀⢻⡇⠚⠛⠉⠙⠛⠛⠛⠃⣽⡀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡯⠀⠸⠭⠭⠭⠭⠭⠽⣿⠀⣴⠇⢀⣴⠟⣹⡟⢩⡿⠩⠍⢹⣿⡀⠀⣦⡀⢀⣤⡀⡀⣿⠀⠀⠘⡿⠭⠭⠭⠭⠭⠭⠭⠭⠍⣷⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢁⣀⠀⢀⣀⣐⣒⣂⣲⣿⣿⠏⣠⠞⢁⣶⠟⠀⣾⣓⠀⠀⢈⣿⡇⢴⣿⣿⣿⣿⣿⠇⣧⠀⠀⠀⢼⡂⠀⠀⠀⠀⣀⣐⣐⣀⠈⢦⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣯⠄⠀⠀⠀⠀⠀⠀⡤⣤⣿⣿⣾⠃⠀⣬⠏⠀⢀⣷⣶⣶⣤⣤⣹⣿⣾⢸⣷⠈⠁⠁⠀⡎⠀⠀⠀⢱⡅⠀⠀⠀⠀⠀⠀⢀⣀⡀⡸⡄⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣜⢀⣉⣉⣉⣋⣉⣉⣉⣉⣹⣿⣿⠁⢀⣨⡏⠀⢠⣼⡛⠿⠿⠷⠛⢈⣹⣟⠘⣯⠀⠀⠀⠀⣅⠀⠀⠀⢸⣅⣀⣀⡀⣀⣉⣉⣉⣉⣉⣁⣹⡀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠛⠑⠋⠛⠛⠛⠻⠿⠿⢿⣿⣿⠯⢽⠏⠀⢀⡾⠛⠁⠀⠀⠀⠀⠘⠋⢛⣿⣿⣤⣤⣤⣤⣿⣷⠀⠀⠘⣿⠋⠛⠛⠙⠛⠛⠛⠿⠿⠻⠛⣋⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣶⣒⣒⣒⣒⣒⣒⣒⣒⣶⠏⠈⣿⣿⡏⠀⢀⡾⢿⡀⠀⠀⠀⢀⣠⣖⣾⣿⣿⡤⠀⠀⢽⣿⣿⡏⠀⠀⠀⡿⣳⣖⣒⣒⣒⣒⣒⣛⣓⣓⣛⠻⠇]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣧⠤⣤⣤⣴⣦⣤⣤⡤⣶⡏⠠⢤⣷⠏⠀⠀⢸⢦⠤⠐⣦⣠⠞⠉⠠⣴⣿⢟⢹⣦⠀⠀⠀⠀⢠⡇⠀⠀⠀⣷⡤⠄⠀⠤⠤⢤⣤⣦⣤⣤⡤⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣜⣈⣉⣉⣉⣉⣉⣉⣉⣹⡏⣀⣉⣽⠃⠀⠀⢠⡟⠉⠉⣁⣚⣉⣀⣀⣉⣭⡇⠀⢸⣏⣁⠀⠀⠀⠀⣷⠀⠀⠀⢬⣉⣀⣉⣉⣉⣉⣉⣍⣉⣉⠉⠁⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⣴⠛⠓⠒⢒⣿⠛⠛⠛⣻⣏⢀⣻⣿⠃⠀⠀⠀⣾⠃⠀⠀⠒⠒⠛⠒⠒⢚⡟⠀⠀⣼⡛⠚⠂⠀⠀⠀⣿⠀⠀⠀⢸⡛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠂⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⣰⡟⠤⠭⠭⡿⠯⠭⠭⢽⡏⣨⡿⣿⠁⠀⠀⠀⣸⠃⢰⠀⠀⠾⠭⠭⢭⣽⡿⠁⠀⠀⣿⡯⠽⢽⠤⠀⠀⣿⡄⠀⠀⠸⠯⠭⠭⠬⠭⠭⠭⠭⠭⠭⠅⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⢠⡿⢃⣐⣒⣚⢓⣒⣀⣴⣿⡷⠋⡼⠃⠀⠀⠀⢀⡟⣖⣺⡇⠀⠀⠀⣲⣾⢿⡁⠀⠀⠀⢻⠙⠦⣒⣒⣒⣈⣿⠃⠀⠀⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⢀⣿⢇⣀⣀⣠⣿⣀⣀⣴⠟⠋⢀⣼⢇⣤⣤⣀⢀⣿⣀⣀⣀⣷⡄⠀⣰⠏⠀⠈⢷⡀⠀⠀⣻⡇⠀⠀⠀⢤⣽⣿⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⠀⣼⡛⡘⠋⠙⠉⠀⣼⠟⠁⠀⢠⣞⡓⢳⣾⠾⠃⣾⠿⠿⢿⣍⡉⡀⢐⠁⠀⠀⠀⠀⣹⡀⠀⣾⡆⠀⠀⣠⡟⠁⣯⠀⠀⠀⠀⣥⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[ ⠀⠀⠀⣾⠫⣿⣿⣿⣤⠴⠟⠁⠀⠀⣼⠏⠈⠉⠉⠉⠀⢸⣇⠀⠀⡰⠟⠛⠛⠛⠀⠀⠀⠀⠐⠃⠙⣷⢿⡀⠀⡼⠟⠀⠀⢛⡀⠀⠀⠀⢻⠛⠁⠀⠀⠂⠛⠛⠛⠀⠀⠀⠀]],
        [[ ⠀⠀⡼⠻⡿⠿⣿⡇⠀⠀⠀⠀⢴⣾⠏⠀⠀⠀⠀⠀⢀⡞⠛⢦⣀⠻⠶⠆⠀⠀⠠⠀⠠⣄⠀⠀⠾⠟⣿⣿⣷⡶⣄⠀⢠⣼⣿⠀⠀⠀⠸⠷⠶⠶⠶⠶⠶⠶⠄⠀⠀⠀⠀]],
        [[ ⢠⡾⣧⣤⣶⣰⣿⡷⠀⠀⠀⣠⣤⣿⠀⠀⠀⠀⠀⢀⣾⠀⣤⣀⡉⠓⢦⡀⠀⠀⢠⣄⠀⠀⠓⢤⣤⣾⣿⢿⡥⣿⣿⣦⣶⣿⣿⠀⠀⠀⢘⣦⣤⣤⣤⣤⣤⣤⣤⣄⠀⠀⠀]],
        [[⣘⣿⣁⣙⣓⣴⣿⣿⡇⠀⠀⠀⢀⠾⣿⣦⠀⠀⠀⣠⢾⣷⠀⠀⠀⠀⢀⣀⣁⣀⣀⢬⡀⠀⠀⠀⠀⠀⢀⣿⣮⣰⣿⣿⣿⣿⣇⣻⠀⠀⠀⢸⣄⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀]],
        [[⠟⠑⠚⠛⣸⡿⣿⣯⠿⣇⢀⡴⢉⣠⡿⠙⠦⠀⣾⡭⠈⣸⡳⣄⠀⠀⠀⠉⠉⠉⠉⠀⠙⠢⠀⠀⣀⠴⣿⣿⠿⢿⡿⣿⣾⢿⣿⣿⡀⠀⠀⠘⣏⠋⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀]],
        [[⡿⣿⡿⣱⡟⠀⠘⢯⡌⠹⣿⣿⠟⠉⠀⠀⠀⢸⡟⠁⠰⣿⡇⠈⢳⡄⠀⠀⠀⠀⠀⠀⣠⣴⠾⠋⠁⠀⣿⣿⠸⠿⣇⣹⣽⣾⣿⡏⣇⠀⠀⠀⢸⠭⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀]],
        [[⣷⣿⣠⠟⠀⠈⠀⠈⢙⣟⠙⠙⢧⣶⣒⣲⣶⠛⠁⠀⣶⣿⠃⢠⣿⡏⢢⣀⠀⠀⣀⡾⠋⠘⠦⢀⣤⠞⠋⣿⢠⣖⣿⡿⣿⣯⣿⣟⢻⡆⠀⠀⢸⣗⠀⣀⣀⣀⡀⠀⠀⠀⠀⠀]],
        [[⣯⢿⣏⠀⠀⠀⠀⠤⢼⡟⢦⡀⠀⠀⣶⡞⠀⠀⠀⢠⣴⡧⠀⠠⣬⣷⣦⣽⢷⣾⣯⣤⡀⢀⣴⣿⣇⠀⢠⣿⡏⠀⢼⣇⣿⠟⣿⣿⣤⢹⠀⠀⠀⢿⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⣃⣈⣻⣄⠀⠀⠀⣏⣹⡇⠀⠙⠦⢈⣽⠱⠶⠶⣾⣯⣟⣁⡀⣉⣛⣿⣉⣁⣨⣮⣻⣟⡓⠋⠉⢁⣹⣶⣿⡏⠁⣀⣩⣿⣮⡀⣭⣿⣧⣼⡀⠀⢠⣼⣉⠉⠁⠀⠀⠀⠀⠀⠀⠀]],
        [[⠟⠛⠀⢹⣷⣀⣰⣻⣾⠇⠀⠀⠀⠈⠛⠦⣤⣤⣴⡟⠈⠁⠉⠉⢛⣿⡋⠐⠒⠛⡻⣈⢛⡦⠴⠋⢙⣃⡾⠀⠀⠛⣿⣛⣿⡁⢿⣿⡛⢛⢧⡀⠘⠛⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⢸⣿⠿⣿⣻⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣬⠉⠉⠉⠙⢻⠋⠉⠉⠉⠉⠈⠳⢙⢦⡀⣰⠟⠀⠀⠀⠀⣿⡯⠿⡷⣾⣿⠃⢈⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠉⠀⠈⢻⣿⢷⣦⡀⠀⠀⠀⠀⠀⠀⢀⣼⠃⠀⠀⠀⠀⢸⣦⠀⠀⠀⠀⠀⠀⠸⣿⣿⡧⣶⣄⡀⠀⠀⢹⣿⣿⣾⣿⡾⣶⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⣿⣄⣄⣩⣡⣼⣿⣴⣶⣤⣾⡇⠀⠀⠀⠀⠀⢸⣬⣷⣶⣿⣇⣠⣭⣥⣤⣬⣤⡆⠀⢹⣷⣶⣿⣿⣿⣿⣦⠈⡏⠱⠣⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠘⠓⠒⠒⠒⠚⠛⠛⠛⠛⠛⠀⠀⠀⠀⠀⠀⠈⠛⠛⠀⠀⠓⠒⠒⠒⠒⠒⠒⠃⠀⠈⠛⠛⠛⠉⠉⠉⠈⠑⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

MIKU.g = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠒⠒⠢⣴⣿⣿⣷⠤⠄⠀⠀⠤⠤⠠⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠋⢀⠀⠀⢀⡿⠛⠋⠀⠀⢀⠀⠀⠀⠀⠀⠀⠈⠑⠢⡀⢀⣴⣿⣿⡦⠤⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣤⡟⣇⠔⠉⠓⠂⣤⣴⢯⡿⠤⣴⣧⣀⣀⠀⠀⠀⡀⣸⣿⣿⠋⠀⠀⠀⠀⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡝⢠⣧⠐⢂⣿⣿⣿⣎⣼⡏⣿⣿⣳⣷⣹⡏⣥⠉⢱⣿⣿⠇⡆⣠⣄⠀⠀⣌⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⢁⢿⣟⣆⢼⢸⡿⠁⢴⡏⡅⣿⣏⡮⠘⣸⣿⢼⣿⣶⣿⣿⣦⡷⡟⠙⣶⡇⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢸⣾⢿⣼⡌⣿⡷⠛⢶⡇⠣⡟⢻⡶⠻⠻⣆⣾⡇⣿⣿⣿⣿⡇⠀⠀⠏⢳⣿⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⣿⣜⣿⣷⢸⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠟⣯⣧⣿⣿⡟⣿⡇⠀⠀⠀⣸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠘⢧⣻⣿⣿⠀⠀⠀⠠⠄⢄⠠⠀⠀⠀⣼⣿⣿⣿⡿⠃⣿⢹⠀⠀⠀⡟⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⡆⠀⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⢀⣠⣼⣿⣿⣿⣿⠃⠀⣹⠈⠀⠀⢰⢻⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡖⡇⠀⣿⢿⣿⣿⣿⣿⣿⡖⠒⢚⡭⣾⣿⣿⣿⡀⠀⠀⠀⢸⢀⠀⠀⣞⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣷⠀⢻⣿⣿⡿⠋⢙⢿⠳⣀⣠⣴⣿⣿⡟⠚⠓⠢⡀⠀⢸⢹⢀⡀⣿⣿⣿⣿⣾⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⢠⡘⣿⣿⠀⠀⢸⢸⢠⠛⢿⣿⢻⣿⠀⠀⠀⠀⢻⡄⢸⣸⢸⠇⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⢞⣿⡿⣿⠘⣇⢻⣿⡄⠀⣹⠈⢿⣤⡟⠻⠟⢸⠀⠀⠀⠀⢸⠃⢸⣼⢻⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣷⠿⠋⢡⣿⠀⣿⠈⣿⣇⠀⢸⠀⠀⠛⡇⠀⠀⠸⢦⠀⠸⠶⣿⠀⢸⣼⡇⡿⣾⣿⣿⣿⠈⠻⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣾⡿⠛⠉⠁⠀⠀⣼⠋⠀⢣⢧⠈⣿⣠⡇⠀⢘⠀⡗⣮⣽⣇⣿⣤⣤⣤⣿⠀⣿⣿⢸⡇⣿⣿⣿⣿⡆⠀⠙⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣳⡏⠀⠀⠀⠀⠀⢠⣧⡇⠀⠸⣾⡄⢻⣿⣿⣿⣿⡀⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⣿⢿⣼⣶⣿⣿⣿⣿⣧⠀⠀⠈⢿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⠀⠀⠀⢀⠞⣿⠁⠀⣷⣷⣧⠸⣿⣿⣿⣿⣇⠸⣿⣿⣿⣿⣿⣿⣿⣇⠀⡟⡌⠉⠏⣿⣿⣿⣿⣾⢇⠀⠀⠈⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣦⡀⠀⢀⢎⡼⣿⡄⠀⢹⣧⢿⠀⣿⣿⣿⣧⣹⠀⣿⣿⣿⣿⣿⣿⣿⣿⣄⣧⠁⡇⣰⣿⣿⣿⣿⣿⣿⡄⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠺⣦⢞⡾⢁⣿⠁⠀⢸⣻⣟⡇⢹⣿⣿⣿⣿⡆⡏⣿⡌⣿⣿⣿⣿⡇⢻⡼⢰⣷⣟⣿⣿⡟⠻⣿⣿⣿⣄⡀⣸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣫⡾⠀⡼⡏⠀⠀⠀⠙⣿⡇⢸⣿⣿⣿⣿⣷⣧⠸⣿⣿⣿⣿⣿⣷⣾⡇⢸⣿⣄⡿⣿⣿⣦⠈⢿⣿⣿⣿⣷⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢮⣿⠃⡰⣻⡇⠀⠀⠀⠀⣿⣿⠘⣿⣿⣿⣿⣿⡿⠃⢻⣿⣿⣿⣿⣿⢙⠁⠈⣿⣿⢹⠹⣿⣿⣷⠛⢿⣿⡿⣾⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⢻⣿⡰⣱⣿⠃⠀⠀⢠⠸⣿⡇⢠⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣴⡀⠀⢱⡻⡜⣧⣿⣿⣿⣦⢼⣽⠿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⡸⠋⢠⣿⡟⠀⣼⠀⡼⡇⣿⡇⣸⣿⣿⣿⣿⣿⣿⡆⢸⣿⣿⣿⣿⣿⣧⡇⠀⠀⠹⣿⣽⣿⣿⣾⣿⣟⡇⠀⢸⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠴⠋⠀⣰⣿⡿⠁⢼⠍⣼⣻⢱⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠙⢿⣿⣿⣿⡇⢀⠇⠀⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⡀⠤⣤⣶⡿⢛⣵⡶⢋⣴⣿⠟⣠⡾⢃⣼⠟⣫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣧⠙⢦⣄⠘⣿⣿⣟⡀⣜⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀]],
        [[⠀⠀⢀⢔⣭⣶⣿⣿⢥⣾⠟⠋⣰⣿⣿⣿⠞⣫⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠻⣷⣮⣿⣦⡹⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀]],
        [[⠀⢠⣻⣿⣿⣿⣿⢞⣋⣤⣴⢿⡻⣯⣿⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠙⠻⠿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀]],
        [[⠀⠘⣿⢸⣿⣿⣿⣟⠿⣹⣶⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⢄⣀⡈⠉⠀⠂⠀⠉⠉⠛⠛⢿⣤⣤⣤⣄⣀⡀⠀]],
        [[⠀⠀⠈⠛⢿⣿⣿⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣾⣎⠻⣿⣿⣿⣿⣿⣿⣿⡿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣞⣭⠍⠓⠒⣒⣒⣲⣶⣶⣿⠟⠛⠛⣉⣿⣿⠆]],
        [[⢠⣶⣾⣿⣿⣛⡛⠛⢛⣻⣿⣿⣿⣿⣟⣿⣯⡉⠁⠀⠀⠀⠀⠙⠿⠽⣾⢽⡿⠝⠺⢝⡇⠀⢜⡩⠖⠋⡿⣿⣿⢿⡿⣚⠷⠚⠈⠙⢿⣷⡀⠉⠙⠛⠒⠒⠛⠛⠛⠋⠁⠀⠀⠸⠟⠉⠁⠀]],
        [[⢀⣙⣛⣛⣯⣿⡿⢶⢽⡟⠛⠛⠉⠉⠉⠙⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠒⠁⠀⠊⠃⠀⠉⠀⢠⣤⡴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠉⠉⠉⠉⠁⠀⠀⠉⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
MIKU.h = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⡤⢤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡾⠋⢲⡄⠀⠀⠀⠁⠀⠀⠀⠉⠳⣮⠷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⠋⠀⠀⠀⠙⣆⠀⢀⣠⣴⣶⣿⣿⣿⣿⣷⣿⣿⣿⡗⠲⠶⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠁⠀⠀⠀⠀⠀⣸⣿⡿⠟⠛⣩⡴⠋⠁⠈⣻⠛⢧⡉⠛⠷⣄⡀⠉⠛⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀ ⠀⠀⠀⠀⠀⠀⣠⣾⡟⠛⠦⣤⡀⠀⣠⣾⠟⠋⠀⢠⡾⠋⣀⠀⠀⡼⠁⠀⡆⠹⡄⠀⠈⠳⣅⠀⡀⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⠆⠀⠀⠀⠀]],
        [[⠀⠀  ⠀⠀⠀⠀⡼⠋⡏⠀⠀⠀⠀⠉⣵⠟⠁⠀⠀⣴⠏⠀⣰⠁⠀⢰⠃⠀⠀⡇⠀⢻⡄⠀⠀⠙⣦⠈⠳⣄⠹⣄⠀⠀⠀⣠⣴⣾⣿⣿⣿⣤⣄⠀⠀⠀⠀]],
        [[⠀⠀   ⠀⠀⢰⠇⢀⣇⠀⠀⠀⢀⡼⠋⠀⣴⠖⠛⣱⠀⣰⠃⠀⡄⢸⠀⢠⠀⡇⠀⠘⣿⡀⠀⠀⠘⣧⠀⠈⢳⣜⣧⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⠄⠀⠀⠀]],
        [[ ⠀⠀   ⣾⢸⠀⣸⠻⣆⢀⣴⡯⠀⢀⡞⠁⠀⣰⠃⣰⠃⠀⣼⠀⡏⠀⣸⠀⡇⠀⠀⣧⠷⡄⠀⠀⡘⣇⠀⢦⣝⣿⣿⣿⣿⣿⣿⠟⠏⠀⠘⢿⣀⠀⠀⠀]],
        [[⠀⠀⠀  ⡇⠀⡟ ⡏⠀⣹⣿⡞⠁⢀⡞⠀⠀⣴⠇⣼⡟⠀⢠⠃⢠⣇⠀⣷⠀⡇⠀⠀⣿⠀⢹⠀⠀⠘⡘⣦⠀⠉⢻⣿⣿⣿⣿⣿⠀⠀⠀⠀⣨⣟⠁⠀⠀]],
        [[⠀⠀⠀ ⣼⠀ ⡼⠁ ⢸⣿⣿⠃⢀⣾⠀⠀⡼⢹⢱⠃⡇⠀⡼⠀⢸⣿⠀⣿⣄⡇⠀⠀⣿⠀⠈⡇⠀⠀⢣⠙⡆⠀⠘⣿⣿⣿⣿⣷⣷⠒⠚⠋⠁⣹⣷⠀⠀]],
        [[⠀⠀⠀ ⡟ ⢸  ⠀⣿⡟⡟⠀⡾⡋⠀⡾⠓⢺⡟⢴⣧⠀⡇⠀⠸⣿⣆⢻⠻⣷⠀⠀⣿⠀⢰⢹⡄⠀⠘⡆⢹⡀⢀⣿⡿⣿⣿⣿⣷⡲⢶⣶⣖⠛⠋⠀⠀]],
        [[ ⠀⠀⢀⡇ ⢸ ⠀⢸⣿⣴⠇⡼⠀⣇⡾⠁⠀⢸⡇⠀⡇⢀⡇⠀⠀⣿⡟⢮⣦⣸⣄⠀⣿⠀⢸⡘⣧⠀⠀⣷⠀⣷⠈⣿⣀⣨⡏⠙⢿⠷⣿⣿⡿⠷⣆⠀⠀]],
        [[⠀ ⠀⢸  ⢸ ⠀⣼⣿⣿⢀⡇⠀⣿⣷⣿⣶⣾⣗⠀⢹⣼⡇⠀⠀⢸⡇⠈⠻⣝⣿⠻⢾⡄⠈⡇⢻⡀⠀⢻⡄⢹⣾⡏⠙⠿⠟⠻⣿⡷⢽⣿⣦⣀⣼⣷⠄]],
        [[⠀⠀⢸⡇⠀ ⡿ ⢀⣿⠁⡿⣾⡇⢘⣿⡟⣿⣟⣿⡟⢷⡈⣿⣿⡀⠀⠈⡇⠀⠀⠈⠻⣦⣼⣏⠹⡇⠀⣧⠀⢸⣇⠈⣿⠷⣾⣿⣆⣤⣯⡀⣀⣿⣇⡼⠟⠉⠀]],
        [[⠀⠀⢸⠁⠀⠀⡇⠀⢸⣿⠀⣿⣿⣷⡀⡇⠀⣿⢿⡿⠇⠈⠁⠈⢯⣷⡄⠀⣟⣭⣷⣶⣶⣮⣿⡸⣆⣳⠀⣿⠀⠘⣿⠀⣿⣄⣼⡏⠀⣹⣿⣭⡿⠿⠋⠀⠀⠀⠀]],
        [[⠀⠀⣿⠀⠀⠀⡇⠀⢸⣿⠀⠸⣿⣯⣷⣳⡀⠘⠛⠋⠀⠀⠀⠀⠀⠀⠙⢦⣇⣾⣿⣿⣿⡎⢿⣗⣹⣷⠀⣿⡇⢠⣿⣤⡇⠠⡿⣿⠋⢹⠂⣿⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⡏⠀⠀⠀⡇⠀⢸⣿⠀⠀⠻⣿⣿⠹⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢧⡻⠟⠻⠇⢈⡟⢻⣷⠀⢁⡇⣼⢿⣿⠂⢰⠇⡟⠀⣸⡆⢸⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⢰⡇⠀⠀⠀⡇⠀⠸⣿⠀⠀⠀⠉⣿⣆⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠛⠻⠭⠌⠋⢠⡿⡇⢠⣼⣿⣿⣸⡟⠀⣸⠀⠇⣰⠏⣷⣾⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⢸⡇⠀⠀⠀⡇⠀⠀⣿⠀⠀⠀⢀⡇⠘⢦⡀⠀⠀⠠⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣼⡇⢰⣿⣿⡿⢻⠀⢀⡇⢠⡼⠃⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⣸⠁⠀⠀⣸⡷⠿⢦⣽⣀⠀⠀⢸⠁⠀⠀⠹⣦⡀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⢀⣠⠾⣿⣿⣠⠟⢡⡟⠀⢸⠀⠘⢀⡾⠁⠀⠀⢿⡏⠀⠀⠀⠀⠀⠀⠀]],
        [[⣤⡇⠀⠀⠀⣿⠲⣆⠀⠀⠉⢛⣶⣯⣤⣤⣠⣤⣼⢷⣦⡀⠀⠀⠀⠀⠀⢀⣀⣤⡤⠶⠋⠁⠀⣸⠟⠁⠀⠋⠀⠀⢸⣦⣷⠞⡇⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠀]],
        [[⣿⠃⠀⠀⢀⣿⡄⢿⠉⢳⣶⢿⣿⣿⣿⣿⣿⡿⠃⢸⣿⠙⠓⠒⠒⠊⠉⢉⡽⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡎⢀⡇⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
        [[⣿⠀⠀⠀⢸⠙⣧⠘⣿⠭⢥⣸⣿⣿⣿⣿⣿⠃⠀⠀⠻⣧⡀⠀⣀⡤⠞⠋⠀⢸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⢰⠀⠀⠀⠀⢿⠁⠀⠀⠀⠀⠀⠀⠀]],
        [[⡏⠀⠀⠀⡿⡄⡸⡖⢿⣷⣶⣾⣿⣿⣿⣿⡇⠀⠀⠀⣀⣈⣻⡻⠝⠒⠁⠀⠀⣸⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⢸⡟⠀⠈⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠁⠀⠀⣸⠃⠙⣧⠸⡄⠹⣍⠉⣿⠛⡿⢿⣀⡤⣖⣋⣩⡿⢻⠻⡄⠀⠀⠀⢰⣿⣿⣿⣿⡿⢹⡏⠉⠙⠒⠢⣄⣀⣸⠃⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⢠⠏⠀⠀⣹⡀⠙⢦⡉⣿⣿⡾⠁⠀⠀⣀⠝⣿⠋⣀⣈⢧⡹⡖⠀⢀⣿⣿⣿⣿⡿⠃⢰⡷⢤⣀⣀⠀⠀⠙⢿⡆⠀⠀⠀⠀⠀⢰⢸⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⢠⡟⠀⢀⠶⢹⠇⢠⡎⠁⣿⣽⠃⠀⠀⠈⠀⠀⢸⣿⡿⠟⠉⠉⠙⢦⠞⣸⣿⡿⠿⣭⣉⠛⢶⡤⣽⣎⠙⡗⠦⣈⣧⠀⠀⠀⠀⠀⢸⡘⡇⠀⠀⠀⠀⠀⠀⠀]],
        [[⢀⡞⢀⡴⠃⠀⢸⠀⡞⠀⢸⣟⣿⣄⣀⠀⠀⠀⠀⠘⠛⠀⠀⠀⠀⠀⠀⠀⡟⢷⠀⠀⡘⡫⣳⣄⢹⡄⣸⠛⢻⢦⣼⣿⡀⠀⡇⠀⠀⠈⣷⢻⠀⠀⠀⠀⠀⠀⠀]],
        [[⣾⠐⠋⠀⠀⠀⣾⢸⠁⠀⢸⣽⠁⠀⠩⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣵⣷⣄⣠⣭⠀⢈⣿⣾⣇⡏⠉⢻⠀⠈⢿⠀⠀⡇⠀⠀⠀⣿⡞⣇⠀⠀⠀⠀⠀⠀]],
        [[⠋⠀⠀⠀⠀⢀⡇⠘⠀⠀⣿⡇⠀⣀⠀⠀⠊⢳⡀⠀⠀⣀⣀⣀⣀⡀⢰⣯⣸⡋⠁⠻⠟⠑⢿⡟⢻⡙⠀⠀⢸⠀⠀⠈⡇⠀⢹⠀⠀⠀⢸⣷⢻⡀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⣾⠁⢰⠀⠀⣿⠁⢺⣿⡧⠀⠀⠐⠹⠞⠉⠁⠀⠀⠊⠉⣿⠻⣿⠿⢶⣿⡦⣴⣾⣧⠏⠀⠀⠀⢸⠐⠀⠀⢧⠀⢸⠀⠀⠀⠈⡟⣏⣇⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⢠⣿⣀⡏⠀⠀⣹⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣶⠀⠀⢰⢧⣶⣷⣄⣤⣯⠀⣸⢿⡿⠖⣆⠀⠀⢸⠀⣀⡤⣼⠀⢸⡇⠀⠀⠀⢷⢹⣸⡄⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⣸⣿⡅⠀⠀⠀⠈⣳⣀⠀⠀⠀⠀⠀⠀⠀⠀⣉⡉⠀⢠⣇⣀⣽⡋⠈⢻⢟⡿⣡⠞⠀⠀⠈⠓⢲⠞⠋⣀⢴⡟⠀⠈⡇⠀⠀⠀⢸⣄⣯⣧⠀⠀⠀⠀]],
}

return MIKU
