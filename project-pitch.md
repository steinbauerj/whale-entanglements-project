Project Pitch
Introduction to Data Visualization, Fall 2018
November 3, 2018
# The number of whales tangled in fishing gear is increasing. Is climate change to blame?

In the winter of 2013-2014, scientists at the University of Washington began noticing that a large body of seawater off the coast of North America in the Pacific Ocean was not cooling as expected. The scientists called the mass of relatively warm water "the blob," and over the next two years, it grew, eventually stretching over 2,000 miles from the Bering Sea to Baja California.

The blob prevented the upwelling of nutrient-rich cold waters that form the basis for much of the marine life off the Pacific Coast. Phytoplankton productivity plummeted, which led to a decrease in zooplankton. Fisherman saw reduced catches of Coho and Chinook salmon. (Interestingly, the blob increased the range of animals that are normally confined to warmer waters—thresher sharks, ocean sunfish, and skipjack tuna were found as far north as Alaska.)

The warm waters also led to a bloom of a type of algae that produces a neurotoxin called [domoic acid](https://www.cdph.ca.gov/Programs/CEH/DFDCS/pages/fdbprograms/foodsafetyprogram/domoicacid.aspx). Certain fish and shellfish can accumulate high levels of domoic acid without any apparent ill effect, but in humans it can cause dizziness, diarrhea, seizures, even death.

High levels of domoic acid caused fishery managers in California to delay the state's important Dungeness crab seasons in 2015. Normally, the season begins in the fall and reaches its peak by the end of December. But the 2015-2016 season didn't get going until April—right in the middle of the spring whale migration.

Another result of the blob is that the number of whales being tangled in fishing gear has skyrocketed. A marine biologist with NOAA's Southwest Fisheries Science Center told me that the center normally gets 10 entanglement reports per year. In 2013, that number jumped into the 30s. In 2016, it was 70.

In October 2018, scientists confirmed the blob has [returned](https://weather.com/news/climate/news/2018-10-24-the-blob-returns-pacific-ocean/).

I'd like to visualize how the increase of warm water off the West Coast, and the subsequent delay in crab fishing this increase has caused, is impacting whale entanglements.

I've been given a CSV containing data on all reports of gray whales tangled in fishing gear off the West Coast from 2006 to 2017. The data is organized by year and month, though I've gone back to the scientist who gave it to me to find out if it is also kepty by day. I've also asked for data for *all* whales, not just gray whales.

### Some of the other data I have:

The National Stranding Network, a subset of the National Oceanic and Atmospheric Administration, keeps a record of every killed or injured marine mammal spotted by volunteers or scientists in its [National Stranding Database](https://www.fisheries.noaa.gov/national/marine-life-distress/national-stranding-database-public-access). I have already submitted a query to the databse and recreived data on gray whale strandings along the coasts of California, Oregon, and Washington since 2006.

One scientist at the University of Oregon has told me he would be willing to share sattelite tracking data from tagged gray whales that shows their migration from lagoons in Baja California to the Arctic. I am speaking with him this week.

So, one possibility would be to map the gray whale stranding and tracking data in relation to shipping lanes that run north and south along the U.S. coast. The state of California keeps shapefiles of the shipping lanes on its [Geoportal](http://portal.gis.ca.gov/geoportal/catalog/search/resource/details.page?uuid=%7B953E7DF6-987F-4613-8117-ADEDDBD4D21E%7D) website.