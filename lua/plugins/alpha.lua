return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require('alpha')
        local dashboard = require("alpha.themes.dashboard")
        local dashboard_cabin = {


        [[  ^  ^  ^   ^☆ ★ ☆ ___I_☆ ★ ☆ ^  ^   ^  ^  ^   ^  ^ ]],
        [[ /|\/|\/|\ /|\ ★☆ /\-_--\ ☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
        [[ /|\/|\/|\ /|\ ★ /  \_-__\☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
        [[ /|\/|\/|\ /|\ 󰻀 |[]| [] | 󰻀 /|\/|\ /|\/|\/|\ /|\/|\ ]],
        }
        local dashboard_anime = {
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣷⣜⢿⣧⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠻⣿⣿⣿⣿⣦⠄⠄]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣮⡻⣷⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣆⠙⣿⣿⣿⣿⣧⠄]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣿⣿⣿⣿⣿⣿⣧⢸⣿⣿⣿⡘⢿⣮⡛⣷⡙⢿⣿⡏⢻⣿⣿⣿⣧⠙⢿⣿⣿⣷⠘⢿⣿⣆⢿⣿⣿⣿⣿⣆]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡿⠐⣿⣿⣿⣿⣿⣿⠃⠄⢣⠻⣿⣧⠄⠙⢷⡀⠙⢦⡙⢿⡄⠹⣿⣿⣿⣇⠄⠻⣿⣿⣇⠈⢻⣿⡎⢿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⣿⣿⣿⣿⣿⠋⠄⣼⣆⢧⠹⣿⣆⠄⠈⠛⣄⠄⢬⣒⠙⠂⠈⢿⣿⣿⡄⠄⠈⢿⣿⡀⠄⠙⣿⠘⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⣿⣿⣿⣿⠏⢀⣼⣿⣿⣎⠁⠐⢿⠆⠄⠄⠈⠢⠄⠙⢷⣤⡀⠄⠙⠿⠷⠄⠄⠄⠹⠇⠄⠄⠘⠄⢸⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢻⣿⣿⠏⢀⣾⣿⣿⣿⣿⡦⠄⠄⡘⢆⠄⠄⠄⠄⠄⠄⠙⠻⡄⠄⠄⠉⡆⠄⠄⠄⠑⠄⢠⡀⠄⠄⣿⡿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢸⣿⠋⣰⣿⣿⡿⢟⣫⣵⣾⣷⡄⢻⣄⠁⠄⠄⠠⣄⠄⠄⠄⠈⠂⠄⠄⠈⠄⠱⠄⠄⠄⠄⢷⢀⣠⣽⡇⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡄⠄⠄⢁⣚⣫⣭⣶⣾⣿⣿⣿⣿⣿⣿⣦⣽⣷⣄⠄⠄⠘⢷⣄⠄⠄⠄⠄⣠⠄⠄⠄⠄⠈⠉⠈⠻⢸⣿⣿⡇⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⢠⣾⣿⣿⣿⣿⣿⡿⠿⠿⠟⠛⠿⣿⣿⣿⣿⣷⣤⣤⣤⣿⣷⣶⡶⠋⢀⡠⡐⢒⢶⣝⢿⡟⣿⢸⣿⣿⡃⣿]],
        [[⣿⣿⣿⢹⣿⢿⣿⣿⣷⢠⣿⣿⣿⣿⣯⠷⠐⠋⠋⠛⠉⠁⠛⠛⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⡏⠊⡼⢷⢱⣿⡾⡷⣿⢸⡏⣿⢰⣿]],
        [[⣿⣿⣿⢸⣿⡘⡿⣿⣿⠎⣿⠟⠋⢁⡀⡠⣒⡤⠬⢭⣖⢝⢷⣶⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢃⢔⠭⢵⣣⣿⠓⢵⣿⢸⢃⡇⢸⣿]],
        [[⣿⣿⣿⡄⣿⡇⠄⡘⣿⣷⡸⣴⣾⣿⢸⢱⢫⡞⣭⢻⡼⡏⣧⢿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿⡿⣿⣧⣕⣋⣉⣫⣵⣾⣿⡏⢸⠸⠁⢸⡏]],
        [[⣿⣿⣿⡇⠸⣷⠄⠈⠘⢿⣧⠹⣹⣿⣸⡼⣜⢷⣕⣪⡼⣣⡟⣾⣿⣿⢯⡻⣟⢯⡻⣿⣮⣷⣝⢮⣻⣿⢿⣿⣝⣿⣿⢿⣿⢀⠁⠄⢸⠄]],
        [[⣿⣿⡿⣇⠄⠹⡆⠄⠄⠈⠻⣧⠩⣊⣷⠝⠮⠕⠚⠓⠚⣩⣤⣝⢿⣿⣯⡿⣮⣷⣿⣾⣿⢻⣿⣿⣿⣾⣷⣽⣿⣿⣿⣿⡟⠄⠄⠄⠄⢸]],
        [[⠹⣿⡇⢹⠄⠄⠐⠄⠄⠄⠄⠈⠣⠉⡻⣟⢿⣝⢿⣝⠿⡿⣷⣝⣷⣝⣿⣿⣿⣿⣿⣿⣿⣧⢹⣿⣿⣿⣿⣿⣿⣿⣿⡟⣠⠄⠄⠄⠄⠈]],
        [[⠄⠘⠇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠠⣌⠈⢳⢝⣮⣻⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠄⠄⢀]],
        [[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢻⣷⣤⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠄⠄⠄⠄⣼]],
        [[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⠏⠄⠄⠄⠄⣰⢩]],
        [[⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢻⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠋⠉⠉⠉⠄⠄⠄⠄⣸⣿⣿⣿⣿⡿⠃⠄⠄⠄⠄⣰⣿⣧]],
        [[⣷⡀⠄⠈⢦⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢻⣯⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣶⣶⣶⣶⣾⣿⣿⣿⣿⡿⠋⠄⠄⠄⠄⠄⣰⣿⣿⣿]],
        [[⣿⣿⣦⡱⣌⢻⣦⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠄⠄⠄⠄⠄⠄⢰⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣷⣿⣿⣦⣐⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⡔⢀⣴⠄⠄⠄⡼⣠⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠉⠉⠙⠛⢛⣛⣛⣭⣾⣿⣴⣿⢇⣤⣦⣾⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        }
        local dashboard_toph = {
        [[⣗⣝⢮⡳⢁⠀⠀⠀⠀⠠⠐⡀⡂⢂⢐⠐⡀⢂⠐⠄⢂⠂⣔⠵⡅⢂⠐⡐⡀⡂⢂⠀⣐⠀⠀⡀⡂⠔⠠⠀]],
        [[⢧⡳⡵⡍⠀⠀⠈⠀⠁⡐⠡⠐⡀⡂⠔⠐⢐⠠⠡⠈⢄⡘⠘⠑⠅⠂⡂⢐⢀⠂⠄⠐⡰⠀⠠⠀⡂⠌⢰⡁]],
        [[⠗⠙⠊⠀⢀⠈⠀⠈⡀⢂⢁⠂⡂⡐⠈⠠⠁⠔⡈⢌⡲⡍⡯⡱⠄⡡⠀⡂⢐⠈⠀⢂⢯⠀⠀⡂⡐⠨⠰⡅]],
        [[⠀⠄⡂⠈⠀⠀⠈⢀⠐⡐⡀⡂⠂⠄⢁⠡⢁⠂⢄⡇⡧⡳⡱⡝⡅⠠⠐⢐⠐⠀⠐⡌⣗⠀⢀⢐⠠⢁⢘⣂]],
        [[⡸⡱⠅⠀⠐⠈⠀⢀⠂⡂⡐⠠⠁⠅⢀⠂⡂⢌⢎⢮⢺⡸⡕⡵⠅⠠⠐⢐⠈⠀⢀⡏⣖⠀⠀⡀⡂⢂⢸⢸]],
        [[⢜⢎⡃⠀⠐⠀⠐⠀⠅⠄⢂⠁⠅⢀⠂⠡⢀⢮⢪⡣⣣⢣⡓⡭⡃⠀⠈⠄⠂⡠⢸⢸⢪⡂⢁⠀⡂⢢⠸⡸]],
        [[⡧⢳⠀⠂⠁⠀⠂⢈⠐⠈⠄⠌⠰⠀⠌⢀⡠⣴⣴⡴⡤⣄⣌⡈⡂⠀⠈⠨⠀⡅⢮⢪⡣⡣⢐⠀⢂⠸⡈⡎]],
        [[⢜⢕⠅⢀⠀⠂⢀⠐⡀⠌⠄⠅⠌⠀⠅⢂⢎⢟⠿⣯⢿⣷⣳⡮⣗⠨⡀⢁⠠⡂⡇⡗⣝⢜⠄⡀⢂⢨⢀⣌]],
        [[⢪⢪⠅⢰⠀⠠⠀⠀⡀⠄⠅⠨⡂⠈⢰⢨⡣⣳⢹⢜⢆⢗⢭⢍⢮⠀⡆⠀⢨⡢⡳⡹⡸⡪⡣⡃⠀⢸⠞⢾]],
        [[⠀⠓⢕⢨⠀⡀⠄⠂⠀⠄⠅⡁⠇⠀⡸⡸⡜⣜⢎⢮⢣⡫⡎⣞⢜⠅⡳⠀⢸⢸⡸⡪⣣⢫⢎⢮⠀⢸⢩⡳]],
        [[⠀⠂⠠⠀⢁⠀⠀⢀⠠⠀⠅⠄⡇⠀⣇⣷⣽⡼⣮⣧⣧⣳⣹⣸⣜⣕⢩⡃⠨⡎⡮⡺⡸⡪⣣⢳⠀⢸⢸⢜]],
        [[⠀⠁⠐⠀⠄⠀⠐⠀⠀⠀⠅⠂⡳⠀⢝⡺⢷⡿⣿⢾⡷⣟⣯⣿⢾⣗⡾⣝⠈⡿⣟⣿⣯⢻⣾⢮⠂⣷⡷⣿]],
        [[⢀⠈⡀⠁⠄⢁⠀⢂⠈⠀⠂⠡⢹⠀⣷⡩⣳⣮⣽⡻⣻⣟⣯⣿⣻⣽⣾⣳⡥⣺⣸⣕⣵⣿⣻⡧⢱⣿⣽⠇]],
        [[⠀⡀⠄⠈⢀⠠⠐⢨⢣⠀⠠⠈⢸⠂⣿⡿⣮⣻⣿⣿⣷⣮⣟⣝⢯⢷⣿⣽⡷⣿⡽⣯⡿⣾⣯⡯⣾⡷⠏⠀]],
        [[⠄⠀⠠⠐⠀⢀⠀⢸⡸⡢⡄⠈⡈⢭⡳⣿⣟⣿⢾⣽⣺⢿⣿⣿⣿⣿⣶⣶⣯⣧⠍⢍⣽⣟⣾⣯⠗⠃⠀⠀]],
        [[⡠⡬⡄⡖⣖⢲⢜⢜⡜⣎⢮⢣⡠⠱⡸⡪⡻⣽⣿⡽⣟⣿⣺⣽⣼⣟⣿⣻⣟⣧⣼⣟⣯⡿⠓⠁⡀⠂⠁⠈]],
        [[⣏⢮⢎⢗⡕⡗⠝⡜⣎⢮⢪⡣⡳⡱⡹⡸⡜⡜⡚⡿⣻⣽⣟⣮⣎⣮⣯⣷⢿⣯⠷⠛⠉⠀⡀⠂⠀⠄⠂⠀]],
        [[⡧⡳⡹⡜⠎⡡⢂⠹⡸⡜⡎⣎⢧⢫⢎⢧⢫⡪⡣⡇⣏⢝⢝⢯⠿⡳⡟⡮⡫⣲⢹⡪⡲⣄⡄⠐⠀⠄⠂⠀]],
        [[⡳⡙⠌⡂⠅⡂⠢⠨⡈⠪⣺⢸⢜⢎⢞⡜⣕⢵⢹⢜⢎⢮⢣⡳⡹⡜⡮⣪⢳⡱⣣⢳⣹⣽⡿⣦⠀⠄⠠⠀]],
        [[⣏⢮⢲⢤⢑⠨⢈⠢⠨⠨⢐⠑⢇⠯⡪⡺⡸⡪⡣⡳⡹⣸⢱⠅⡑⠹⡜⡎⡇⡗⡕⡷⡿⣟⡿⡳⡇⠀⡀⠄]],
        }
        local dashboard_marcile = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢀⢤⡲⡽⣝⣕⢧⣓⢗⣗⡗⣗⢽⢕⣖⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⢄⢂⠀⢐⢐⣕⠽⡱⣕⢗⢗⣳⡳⡵⡵⣕⢽⢼⢕⣗⢧⢧⢯⢳⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠈⠐⠐⢄⢰⡺⡪⣎⢯⢮⢯⣳⡳⡽⡽⣝⢮⣳⡹⣕⢗⢝⣝⣝⢽⢕⢮⢤⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⢀⢔⡪⣣⣓⣝⡞⢮⣫⡫⣧⣳⣳⡳⣝⠮⣃⣢⣹⡸⣔⢥⣪⡪⡯⡳⣝⢮⣣⡳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⢔⢕⢧⢏⢖⢬⣲⣪⣳⡳⣝⢺⣺⣺⣺⡪⣯⣺⣺⣪⡻⡮⣳⣳⣳⡹⡝⡮⣳⣳⡳⡝⢦⡀⠀⠀⡀⠀⢀⠀⠀]],
        [[⠁⠀⠠⡽⡽⢕⢸⢵⢽⢱⢱⣺⣺⡺⡎⣗⣗⣗⣗⣝⣞⣞⣞⣞⢮⣻⣺⣺⣺⡺⡼⡜⣞⢮⣏⢯⡂⠙⢆⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⢸⢽⢍⢖⢕⣕⣗⢇⣗⣗⢷⢽⣝⣞⣞⣞⣜⣞⣞⣞⣞⢮⣳⣳⣳⣳⡳⡭⡮⡺⣘⢷⣝⡞⣮⡀⠀⠱⡀⡀⠀⢀⠀]],
        [[⠈⠀⠘⡕⢕⡩⡓⡇⡇⡇⡷⡽⡽⡵⣱⣳⡳⣕⢗⢳⢳⢧⢧⣳⣳⣳⣳⡳⡝⡝⣝⣕⢣⣓⣗⢽⣸⡢⢀⣔⡚⡔⠀⠀⠀]],
        [[⠀⠀⠀⠘⡜⡮⡺⡪⡺⡂⡯⡯⡯⡯⣺⡺⣘⠜⠮⠫⣹⢹⢕⣗⣗⣗⣗⢽⣸⢊⢤⠦⢦⢪⠸⡵⣕⢽⢑⠱⡸⠘⡄⠀⠀]],
        [[⠠⣔⣀⠀⠈⢎⢜⢎⢮⡂⡯⡯⡯⡯⣺⡊⡰⡼⣜⣖⡌⢯⣳⣳⣳⡳⡽⡕⣇⢯⣻⡸⣐⢵⢅⢫⣺⣺⡪⡪⡃⠀⠸⠀⠀]],
        [[⠀⢳⡓⡓⡦⣄⢮⠃⣗⢅⢯⢫⢯⢯⡪⡸⡇⡇⣕⢷⣝⣞⣞⣞⣞⢮⢯⢇⢯⣳⡳⣝⢮⡇⣗⡇⣗⢇⢇⠝⠀⠀⠀⡂⠀]],
        [[⠀⠀⠓⣇⢗⠌⢩⢫⢮⣪⢹⢼⢽⢕⣇⢯⢯⡻⣮⣳⣳⣳⣳⣳⡳⡽⣝⢽⢕⣗⣍⢮⣳⣳⢳⣇⢳⡣⡧⠁⠀⠀⠀⠀⠀]],
        [[⢀⠀⠀⠀⠑⢕⡕⡕⣕⠈⠸⡕⡽⣕⡇⡯⡳⣝⣞⢪⣺⣺⣺⣺⡪⡯⡮⡮⡧⢳⢝⣗⣗⣗⠕⡇⣺⡪⡮⠀⠀⢀⠀⠁⠀]],
        [[⠀⠀⢀⠠⠀⡰⡹⡵⣜⡢⡀⢯⢺⣺⡪⣯⣻⣺⣪⣳⣳⣳⣳⡳⡽⡽⣽⡹⣝⣜⣗⣗⣗⣗⢕⢕⢜⢎⢯⢂⠀⠀⠀⠀⡀]],
        [[⠀⠠⠀⠀⠠⢘⢜⢎⢔⢝⢮⣪⢣⢳⢝⣞⣞⣞⣞⣞⣞⣞⣞⢮⢯⢯⢮⢯⣺⣺⣺⣺⣺⡺⡜⢐⢽⢕⢱⠀⠠⡀⠀⠄⠀]],
        [[⢀⠀⠀⢀⠁⢔⢹⢸⠰⡱⡱⡘⡜⡜⡕⣗⣗⣗⣗⣗⣗⣗⢷⢽⢽⢝⢍⢖⠤⣱⣳⣳⡳⠝⡸⡀⢯⡃⠸⠀⠀⠀⠀⠀⢀]],
        [[⠀⠀⠀⠆⠀⡣⡣⡃⠇⡧⡣⡃⡇⢇⢳⡪⣚⢞⣞⣞⣞⢮⢯⢯⢧⢵⢥⢕⣗⣗⣗⢗⢕⢥⣣⠑⣕⢅⠈⠀⠀⠀⢀⠈⠀]],
        [[⠀⠀⡐⠀⡠⠂⠅⢅⢑⡱⡱⡅⡏⡮⡦⡯⡎⡖⡦⣕⣙⠽⠽⡽⡽⡽⣝⣗⣗⢗⢕⢕⣕⣗⠧⢱⢈⠢⠀⠀⠀⠄⠀⠀⠀]],
        [[⠈⢀⠀⡂⡂⠅⡡⢂⠸⡜⣜⢜⢜⢜⢸⢹⠳⣕⢝⣞⢮⣻⣺⣲⣲⡪⡼⣜⣖⢼⣜⣗⢷⢽⡱⡈⡐⠨⡀⡀⡂⡀⠠⠀⠁]],
        [[⠀⢐⢐⠐⠄⢅⢂⠢⠸⡜⡜⣕⢕⠅⡇⡧⣇⣗⡕⢝⢗⣗⣗⣗⢷⢽⣝⣞⢮⣳⢳⢹⣕⢧⢯⡏⡐⢡⢊⢐⢱⠨⡢⡀⠠]],
        [[⠀⡐⠄⢅⢕⠱⡐⡑⢔⢈⠪⡪⡳⡹⡸⡘⣞⢮⢏⢗⢵⣱⡱⠹⢹⠳⡳⡹⡱⡼⣜⢷⢽⣝⢗⠡⡨⢢⢑⠔⢌⠪⡢⡑⢅]],
        [[⢂⠂⢅⠪⡢⡑⢕⢌⠢⡑⠔⡄⡑⡱⢕⢕⢕⠝⣜⡪⣳⡳⡽⡽⡵⣝⢮⢮⢬⢭⢮⢯⠳⢑⢔⠱⡨⠢⡑⢌⢢⢑⢌⠪⡢]],
        }

        dashboard.section.header.val = dashboard_anime

        dashboard.section.buttons.val = {
            dashboard.button("e", "▪ New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "▪ Find file", ":lua require('fzf-lua').files() <CR>"),
            dashboard.button("t", "▪ Browse cwd", ":NvimTreeOpen<CR>"),
            -- dashboard.button("s", "▪ Browse scripts", ":e ~/scripts/<CR>"),
            dashboard.button("c", "▪ Config", ":e ~/.config/nvim-lite/<CR>"),
            dashboard.button("q", "▪ Quit", ":q!<CR>"),
        }

        -- dashboard.section.footer.val = {
        -- 	[[--------]],
        -- }

        dashboard.section.buttons.opts.hl = "Keyword"
        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
