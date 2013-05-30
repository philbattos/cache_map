# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Geoname.create(feature_id: 78956,
               feature_name: 'Arkansas River',
               feature_class: 'Stream',
               state_alpha: 'AR',
               county_name: 'Desha',
               # primary_lat_dms: 334630N,
               # prim_long_dms: 0910415W,
               prim_lat_dec: 40.7751096,
               prim_long_dec: -110.0709427,
               elev_in_m: 33,
               elev_in_ft: '108',
               map_name: 'Rosedale')

# 169341|Pinyon Creek|Stream|CO|08|Pueblo|101|382430N|1043602W|38.4083339|-104.6005282|382430N|1043602W|38.4083339|-104.6005282|1511|4957|Pinon|07/01/1990|04/01/2011
# 169342|Pinnacle Ridge|Ridge|CO|08|Gunnison|051|380900N|1073032W|38.1499932|-107.5089482|||||3702|12146|Courthouse Mountain|07/01/1990|
# 169344|Hidden Brook|Stream|CO|08|Boulder|013|401448N|1053208W|40.2466513|-105.5355555|401535N|1053357W|40.2596|-105.5658|2625|8612|Allenspark|08/01/1990|03/15/2007
# 169345|Wulsten Baldy|Summit|CO|08|Custer|027|381505N|1054417W|38.2513874|-105.7380624|||||3870|12697|Cotopaxi|08/01/1990|
# 169346|Barnes Ridge|Ridge|CO|08|Garfield|045|394330N|1080912W|39.7249748|-108.1534144|||||2383|7818|Cutoff Gulch|08/01/1990|
# 169347|V Rock|Cliff|CO|08|Archuleta|007|370728N|1064738W|37.1244538|-106.7939245|||||3140|10302|Chromo|08/01/1990|
# 169348|Rio Grande Palisades|Cliff|CO|08|Mineral|079|374330N|1064232W|37.7250033|-106.7089312|||||2526|8287|South Fork West|12/01/1989|
# 169349|C J Lateral|Canal|CO|08|Montrose|085|382724N|1075413W|38.4566535|-107.9036748|||||1775|5823|Montrose West|04/01/1990|
# 169350|Pheney Lateral Ditch|Canal|CO|08|Grand|049|400230N|1061810W|40.0416521|-106.3028059|||||2326|7631|Junction Butte|04/01/1990|
# 169351|Frosty Park|Flat|CO|08|Teller|119|384520N|1045737W|38.755543|-104.9602508|||||3111|10207|Manitou Springs|04/01/1990|
# 169352|Elk Park|Flat|CO|08|Teller|119|384545N|1050007W|38.762486|-105.001918|||||3362|11030|Pikes Peak|04/01/1990|
# 169353|Pueblo Reservoir|Reservoir|CO|08|Pueblo|101|381554N|1044639W|38.2649163|-104.7775932|||||1471|4826|Swallows|11/01/1992|07/13/2011
# 169354|Cache Creek Trail|Trail|CO|08|Garfield|045|392249N|1075212W|39.380257|-107.8700666|||||3233|10607|North Mamm Peak|05/01/1991|
# 169355|Brush Creek Trail|Trail|CO|08|Mesa|077|392137N|1074950W|39.3602573|-107.8306203|||||2801|9190|South Mamm Peak|05/01/1991|
# 169356|Erie Canal|Canal|CO|08|Mesa|077|391407N|1074602W|39.2352577|-107.7672834|||||2475|8120|Vega Reservoir|05/01/1991|

