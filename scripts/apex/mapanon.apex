//MapDemo.MapExample();

Map<String,String> mapCntCurrency= new Map<String, String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Canada', 'cDollar');
mapCntCurrency.put('Mexico', 'Peso');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('France', 'Euro');

System.debug(mapCntCurrency);


//map has no ordering, so, no indexes.
//map has key
string curr1 = mapCntCurrency.get('India');//Rupee
string curr2 = mapCntCurrency.get('usa');

system.debug('India currency is ' + curr1);
system.debug('usa currency is ' + curr2);

string country1 = 'Turkiye';
string curr3 = mapCntCurrency.get(country1);
system.debug(country1 + ' currency is ' + curr3);

//keyset returns us set of keys.
set<String> allCountry = mapCntCurrency.keySet();
System.debug('All countries '+ allCountry);

//we can get list of values.
List<String> allCurrencies = mapCntCurrency.values();
System.debug( 'all currencies are '+ allCurrencies);


set<String> allCountries= mapCntCurrency.keySet();
for( String eachCountry:allCountries ){
    string eachCurrency= mapCntCurrency.get(eachCountry);
    System.debug('country is '+ eachCountry + 'its currency is '+eachCurrency);
}