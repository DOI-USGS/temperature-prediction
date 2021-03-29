<script>
    export default {
        textContents: {
            "Training an artificial neural network": [
                {
                    'method': "Like other environmental models, ANNs are fine-tuned using real-world observations. To predict stream temperature, we provide the ANN model with input data (daily observations of precipitation and air temperature) and output data (observed stream temperatures).",
                    'flubber_id': 'ANN1',
                    'bees_id': 'step_error'
                },
                {
                    'method': "During training, the model “learns” the relationship between the inputs and outputs. The model only sees this information as values – it has no idea how the inputs and output may be physically related.",
                    'flubber_id': 'ANN1',
                    'bees_id': 'step_error'
                },
                {
                    'method': "The first component of an ANN is called an input layer – this is where the model receives the input data.",
                    'flubber_id': 'ANN2',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "From the input layer, the information is passed to what is known as a “hidden” layer through a series of connections. Each connection transmits an input value to a node in the hidden layer.",
                    'flubber_id': 'ANN3',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "During training, the model can vary the weight of each connection to assign more or less importance to a particular piece of information.",
                    'flubber_id': 'ANN3',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "In the hidden layer, the receiving nodes calculate a weighted sum of the received information…",
                    'flubber_id': 'ANN4',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "…and then the weighted sum is adjusted by some simple rule, for example, dividing only those weighted sums that are less than five by two.",
                    'flubber_id': 'ANN5',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "These output values are then passed to nodes in the next hidden layer, or, if there are no more hidden layers, to the output layer.",
                    'flubber_id': 'ANN6',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Adding more nodes or hidden layers to the model increases the complexity of relationships between inputs and outputs that the model is able to mimic. To predict stream temperature, we use an ANN with many hidden layers.",
                    'flubber_id': 'ANN6',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "When the output layer receives the information from the final hidden layer, it computes a weighted sum of that information…",
                    'flubber_id': 'ANN7',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "And adjusts that sum by another simple rule to produce a final output value.",
                    'flubber_id': 'ANN8',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "This value is the model’s prediction of stream temperature, given the air temperature and precipitation values provided as input to the model.",
                    'flubber_id': 'ANN9',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model compares the predicted value to the observed stream temperature. The difference between the two values represents the error associated with the prediction.",
                    'flubber_id': 'ANN10',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Since the first set of weights and connections are initialized randomly, the model is pretty far off to begin with.",
                    'flubber_id': 'ANN10',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model reduces the error by going back and adjusting the weights throughout the model. Using calculus, the model efficiently calculates the relationship between the error and each weight in the model to figure out how much and in what direction to adjust the weights to improve prediction accuracy.",
                    'flubber_id': 'ANN11',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model keeps adjusting weights and evaluating the error associated with stream temperature predictions for every location and every day that we have monitoring data in the Delaware River Basin.",
                    'flubber_id': 'ANN12',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Eventually, the model lands on a set of weights that produces the most accurate predictions based on all the data across all the locations.",
                    'flubber_id': 'ANN13',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "At this point the model is considered “trained” and can be used to make predictions using new sets of input data. But the model will never be perfect, even when fully trained, and will perform better for some places and times than others.",
                    'flubber_id': 'ANN13',
                    'bees_id': 'step_error_exp'
                }],
            "Testing an artificial neural network (ANN)": [
                {
                    'method': "As an example, here we show daily temperature predictions for a stream reach over a one month period.",
                    'flubber_id': '',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Prediction error (the difference between predicted temperatures and measured observations) is small when the model makes accurate predictions.",
                    'flubber_id': '',
                    'bees_id': 'step_error_obs'
                },
                {
                    'method': "In order to evaluate how well the model is capturing the temperature dynamics of the stream reach, we can summarize daily prediction errors.",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse'
                }, 
                {
                    'method': "One way to summarize error is by calculating the root mean squared error (RMSE).",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse'
                },
                {
                    'method': "Small errors translate to low RMSE, indicating the model is accurately predicting water temperature.",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse'
                }, 
                {
                    'method': "Large errors and high RMSE indicate the model is doing a poor job of predicting water temperature dynamics.",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse_scale'
                }, 
                {
                    'method': "We can use RMSE to compare different models or assess accuracy in time, space, and under different conditions.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "Here we show model RMSE for a subset of stream reaches in the Basin based on all available data in the training period.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "But recall that the Delaware River Basin, as one of the most observed basins in the U.S., is unique in having a lot of data.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': " How does the ANN perform when we don't have a lot of training data?",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "To find out, we artificially reduced the amount of data used to train the model, and compared the models built on different data availability schemes.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "When only 0.1% of the training data is used, the ANN model is less accurate and has a hard time capturing temperature dynamics of the river.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "How can we improve model predictions when temperature observations are limited?",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "In reality, humans already know a lot about water temperature.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "Even without observations, we can guess that streams will be warmest in the summer or that forested headwater streams are cooler than large urban streams.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "How can we tell a machine what we already know?",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
            ],
            "Recurrent neural network (RNN)": [
                {
                    'method': "One of the simplest things we know is how time relates to stream temperature.",
                    'flubber_id': 'ANN13',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "Put simply, the water temperature tomorrow is likely to be similar to the water temperature today.",
                    'flubber_id': 'RNN',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "For machine learning modeling, incorporating this knowledge is as simple as using models that have memory, allowing information from one day to be passed on to the next day.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "The type of model with a memory that we use is called a recurrent neural network (RNN).",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "In the Delaware River Basin, giving the model a memory improves model accuracy in some reaches but worsens model performance in others.",
                    'flubber_id': '',
                    'bees_id': 'step_rnn'
                }],
            "Graph convolutional network": [
                {
                    'method': "Another piece of knowledge we can use to improve the model is that all streams are part of a network.",
                    'flubber_id': 'RNN',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': " You don’t need to be a hydrologist to know that water flows downstream, and that the water temperature in downstream segments is likely to be similar to that in upstream segments.",
                    'flubber_id': 'RGCN',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "We can use these spatial relationships to better leverage information across the stream network.",
                    'flubber_id': 'RGCN',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "The way we inform the model about space is by calculating the distance between stream segments and allowing the model to weight information based on distance.",
                    'flubber_id': 'RGCN_2',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "Information coming from a nearby stream will be weighted more heavily (assigned greater importance) than information coming from a far away stream.",
                    'flubber_id': '',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "The spatially aware model that we use is called a graph convolutional network.",
                    'flubber_id': '',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "In the Delaware River Basin, adding information about the spatial configuration of the river network improves predictions.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                }],
            "Knowledge-guided deep learning": [
                {
                    'method': "Beyond time and space, we know quite a bit about the science behind how and why streams gain or lose heat.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "We shouldn’t ignore this wealth of knowledge simply because we’re using a machine learning approach that is driven by data.",
                    'flubber_id': 'RGCN_2',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "These natural processes are intuitive – warm, sunny days should warm streams, and cold, cloudy days should cool streams.",
                    'flubber_id': 'RGCN_ptrn',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "Scientists have written heat loss and gain rules into equations to make temperature predictions that generally follow the laws of physics.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "We can use these equations to make temperature predictions for all places and times in the Delaware River Basin, and treat these predictions as “real data” to train our neural network.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "By training the model on the predictions generated by these physics-derived equations, the machine learning model “learns” physics.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "We call this method knowledge-guided deep learning.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "And the great news? Now that the model has learned the general physics of the system, it can do more with less.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': "Even when less than 1 percent of temperature data is available for training, the model is still able to make accurate predictions.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': "These results give us confidence that we can use knowledge-guided deep learning to make predictions in river basins with limited observations.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': "Additionally, these knowledge-guided machine learning models shine in new scenarios. When trained on only cold-season data, the model is able to predict warm-season dynamics.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': " This is one piece of evidence that these models can make accurate predictions into the future where conditions might be different than we've ever seen before.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': "To learn more about knowledge-guided deep learning, see recent publications by the USGS and collaborators in <a href=\"https://agupubs.onlinelibrary.wiley.com/doi/pdfdirect/10.1029/2019WR024922\" target=”_blank” class=\"pub_link_mobile\">lakes</a> and <a href=\"https://arxiv.org/pdf/2009.12575.pdf\" target=”_blank” class=\"pub_link_mobile\">streams</a>.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                }]
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

    a.pub_link_mobile {
        color: $mediumBlue;
        box-shadow: 0 0.5px 0 $mediumBlue;
    }

    a.pub_link_mobile:focus {
        outline: none;
    }
</style>