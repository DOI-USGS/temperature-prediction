<script>
    export default {
    textContents: {
            title1: "The Delaware River Basin",
            paragraph1: "The Delaware River drains an area of 13,500 square miles across four states — New York, New Jersey, Pennsylvania, and Delaware. It is rich in history, ecologically diverse, and critical to the regional economy. Water managers in the Delaware River Basin (DRB) have a long history of applying innovative, regional solutions to ensure the long-term sustainability of this resource, which provides drinking water to over 15 million people.",
            paragraph2: "Water temperature is a key indicator of water quality in the DRB. It has implications for:",
            paragraph3: "Many species – including economically important game species like brook trout and endangered species like the Dwarf wedgemussel – thrive or spawn in specific temperature ranges. These species are threatened by rising stream temperatures due to urbanization, climate change, and human alteration of streamflow patterns.",
            paragraph4: "Management strategies to limit stream warming include widening riparian buffers along streams and reducing impervious surfaces near critical waterways. And in the upper portion of the basin, some of this warming can be mitigated by releasing cold water from New York City reservoirs. Because the cold reservoir water is a limited resource, we can help protect cold water habitat in the DRB by improving our ability to predict stream temperature, and therefore make an educated guess at when, where, and how much cold water to release.",
            title2: "Stream Temperature Monitoring",
            paragraph5: "Our understanding of water temperature dynamics in the DRB is underpinned by basin-wide monitoring of water temperature. At first glance, it appears that there is a lot of information about stream temperature in the basin. The map below shows all of the locations where the USGS or other agencies have ever measured the temperature of medium to large streams.",
            paragraph6: "The USGS has been monitoring temperature in the DRB since 1901, and has amassed over 450,000 daily temperature measurements. Temperature monitoring really picked up in the mid-1960s, and has grown considerably in recent decades.",
            paragraph7: "Since 2017, the growth in temperature monitoring can be attributed to the USGS's <a href=\"https://www.usgs.gov/mission-areas/water-resources/science/usgs-next-generation-water-observing-system-ngwos?qt-science_center_objects=0#qt-science_center_objects\" target=”_blank” class=\"pub_link\">Next Generation Water Observing System (NGWOS)</a>. NGWOS is a targeted effort in the Delaware and two other river basins to develop and apply new monitoring techniques for a wide range of water characteristics.",
            paragraph8: "Temperature is one of the most widely measured water characteristics in the U.S. – temperature can now be monitored by boat, by camera, by drone, by fiber optic cable, by satellite, by sensor, or by the tried and true method of a field technician sticking a thermometer into the water.",
            title3: "Data Availability",
            paragraph9: "But don't let the sheer amount of data fool you. Most records of stream tempearture are concentrated at just a few sites across the basin.",
            paragraph10: "The 5 most frequently monitored river reaches – only 1% of all monitored river reaches – account for nearly 20% of all stream temperature data. There are whole chunks of space and time where we don't know anything about the river, where we are \"in the dark.\"",
            tiptextMobile: "Watch below as the stream reaches in the Basin light up if they were monitored for temperature in each of the last forty years.",
            tiptextDesktop: "Explore the availability of temperature observations across the DRB by selecting a river reach (on the left) or a year (on the right) to explore where and when we have the most information.",
            paragraph11: "To show how gaps in temperature observations in space and time might impact our understanding of stream temperature dynamics, we can represent the availability of data as a matrix with two axes: space and time. Some streams are monitored daily, others at regular intervals, and some sporadically or not at all. It is more difficult to predict how temperature in a stream will fluctuate when we don't have much data to go on.",
            title4: "Variability in Water Temperature",
            paragraph12: "Another complexity of predicting temperature dynamics in the basin is that not all streams behave the same way. Features of the landscape can have large effects on water temperature that result in different temperature patterns. Groundwater inputs, reservoirs, and urban areas all have distinct temperature signatures.",
            paragraph13: "If we look at a single year of data, we can see that stream temperatures are not uniform throughout the basin.",
            paragraph14: "In the summer of 2019, an urban reach in Philadelphia was the warmest stream reach in the basin, while a reach below the Beltzville Resevoir was one of the coolest. These reaches aren't that far from each other as the crow flies, but they experience very different seasonal temperature variations.",
            paragraph15: "The matrix below shows a year of actual temperature data from all sites on medium to large streams in the DRB.",
            paragraph16: "At this point, we know that stream temperatures on any given day vary throughout the basin and that the amount of data we have to work with varies in time and space. To predict what the temperature will be in a given stream, or how temperatures will change over time, we can use a model. But how can we create robust models that account for diverse temperature dynamics and make accurate predictions in places and times where we don't have a lot of information? Visit the Model chapter to learn about innovative modeling techniques to predict water temperature."
        }
    }
</script>
<style lang="scss">
    // IMPORT COLORS
    $backgroundCharcoal: #292b30;
    $boxCharcoal: #0f0f0f;
    $offWhite: #F1F1F1;
    $offWhiteBox: #d4d4d4;
    $plasmaYellow: #FAB62F;
    $plasmaPink: #BE3D7D;
    $plasmaPurple: #62039A;
    $plasmaBlue: #142167;
    $darkBlue: #192c42;
    $footerBlue: #00264C;
    $mediumBlue: #5D9DC7; 
    $grayBlue: #777b80;
    $dimGray: #9c9c9c;

    a.pub_link {
        color: $mediumBlue;
        @media screen and (max-width: 600px) {
            box-shadow: 0 0.5px 0 $mediumBlue;
        }
    }

    a.pub_link:focus {
        outline: none;
    }
</style>