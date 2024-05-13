Shared.Themes = {}

-- Dark Theme
Shared.Themes.Dark = [[
body:has(.dark) {
    --background: #001e3c;
    --lighter-background: #012242;
    color: #fff;
    --light-color: #ddd;

    --text-color: #fff;

    --row-odd: rgba(255, 255, 255, 0.03);
    --row-even-hover: rgba(255, 255, 255, 0.05);
    --row-odd-hover: rgba(255, 255, 255, 0.08);

    --navbar-background: #071b2f;
    --navbar-border: #132f4c;
    --navbar-color: #ddd;
    --navbar-hover-color: #fff;
    --navbar-indicator-color: #fff;

    --table-head-background: #071b2f;
    --table-background: #0b223a;
    --table-even-background: #102840;

    --top-hover-background: #24273e94;

    --card-background: #0a1929;
    --card-border: #173a5e;

    --settings-divider-color: #173a5e;
    --settings-light-color: #eee;

    --icon-color: #fff;

    --switch-background: #90caf9;
}
]]

-- Light Theme
Shared.Themes.Light = [[
body:has(.light) {
    --background: #ffffff;
    --lighter-background: #dddddd;
    color: #000;
    --light-color: #222;

    --text-color: #000;

    --row-odd: rgba(0, 0, 0, 0.075);
    --row-even-hover: rgba(0, 0, 0, 0.05);
    --row-odd-hover: rgba(0, 0, 0, 0.095);

    --navbar-background: #eee;
    --navbar-border: #ddd;
    --navbar-color: #333;
    --navbar-hover-color: #000;
    --navbar-indicator-color: #ddd;

    --table-head-background: #e2e2e2;
    --table-background: #e9e9e9;
    --table-even-background: #e6e6e6;

    --top-hover-background: #e7e7e7;

    --card-background: #f3f6f9;
    --card-border: #e0e3e7;

    --settings-divider-color: #173a5e;
    --settings-light-color: #222;

    --icon-color: #000;

    --switch-background: #898989;
}
]]