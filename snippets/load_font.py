from pyfonts import load_font
import os
import requests
import matplotlib as mpl
import matplotlib.pyplot as plt

"""
    Fonts available on GitHub at https://github.com/google/fonts
    
    Look in the `ofl` folder.
    
    Other key folders are `ufl` (Ubuntu fonts), `apache` (Apache fonts).
    
    Steps:
    - Find the font.
    - Click the three dots `...` on the right side to open a menu.
    - Click on "Copy Permalink".
    - Append `?raw=true` to the permalink url.
"""


def set_plotting_font(font_url, font_name, dest_folder, is_serif=False):
    # check if font is already downloaded
    ext = font_url.split('.')[-1]
    ext = ext.split('?')[0]
    font_path = os.path.join(dest_folder, font_name + '.' + ext)
    if not os.path.exists(font_path):
        # download font
        response = requests.get(font_url)
        with open(font_path, 'wb') as f:
            f.write(response.content)
    # load font in Matplotlib
    mpl.font_manager.fontManager.addfont(font_path)
    prop = mpl.font_manager.FontProperties(fname=font_path)
    # set the font as the default
    serif_type = 'sans-serif' if is_serif is False else 'serif'
    plt.rcParams['font.family'] = serif_type
    plt.rcParams['font.{}'.format(serif_type)] = prop.get_name()


font_url = 'https://github.com/kiwi0fruit/open-fonts/blob/deb211dd1e08becf3b9300b02365cd79415c64d4/open-fonts/IBMPlexMono-Regular.ttf?raw=true'
set_plotting_font(
    font_url=font_url, font_name='IBMPlexMono', dest_folder='data', is_serif=False
)

fig, ax = plt.subplots(figsize=(10, 6))
ax.text(
    x=0.5,
    y=0.5,
    s=f"What an easy way to load fonts, isn't it?",
    fontsize=20,
    ha="center",
)
plt.show()

"""
    PyFonts
    
    PyFonts library makes it super easy to load fonts in Matplotlib and Seaborn.
"""

# IBMPlexFont = load_font(
#     font_url="https://github.com/kiwi0fruit/open-fonts/blob/deb211dd1e08becf3b9300b02365cd79415c64d4/open-fonts/IBMPlexMono-Regular.ttf?raw=true",
# )
# IBMPlexFont.__dict__

font = load_font(
    font_url="https://github.com/google/fonts/blob/0e70abe31055681b7744b8ea67f579ecda97fc0b/ofl/inter/Inter%5Bopsz%2Cwght%5D.ttf?raw=true",
)
print(font.__dict__)

fig, ax = plt.subplots(figsize=(10, 6))
ax.text(
    x=0.5,
    y=0.5,
    s=f"What an easy way to load fonts, isn't it?",
    font=font,
    fontsize=24,
    ha="center",
)
plt.show()

"""
    Quick Load using PyFonts in Jupyter Notebook
"""

font_geist_mono = load_font(
    font_url="https://github.com/google/fonts/blob/0e70abe31055681b7744b8ea67f579ecda97fc0b/ofl/geistmono/GeistMono%5Bwght%5D.ttf?raw=true",
)
mpl.font_manager.fontManager.addfont(font_geist_mono._file)
family = font_geist_mono.get_family()[0]
plt.rcParams['font.family'] = family
plt.rcParams['font.{}'.format(family)] = font_geist_mono.get_name()

fig, ax = plt.subplots(figsize=(10, 6))
ax.text(
    x=0.5,
    y=0.5,
    s=f"What an easy way to load fonts, isn't it?",
    fontsize=20,
    ha="center",
)
plt.show()
