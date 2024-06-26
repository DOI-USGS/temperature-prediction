<script>
    export default {
        textContents: {
            "Training an artificial neural network": [
                {
                    'method': "ANN machine learning models are trained and tested using real-world observations. To predict stream temperature, we provide the ANN model with input data (daily observations of precipitation and air temperature) and output data (observed stream temperatures). During training, the model “learns” the relationship between the input and output data. The model only sees this information as values – it has no idea how the input and output may be physically related.",
                    'flubber_id': 'ANN1',
                    'bees_id': 'step_error'
                },
                {
                    'method': "The first component of an ANN is called an input layer – this is where the model receives the input data.",
                    'flubber_id': 'ANN2',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "From the input layer, the information is passed to what is known as a “hidden” layer through a series of connections. Each connection transmits an input value to a node in the hidden layer. During training, the model can vary the weight of each connection to assign more or less importance to a particular piece of information.",
                    'flubber_id': 'ANN3',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "In the hidden layer, each node calculates a weighted sum of the information it received.",
                    'flubber_id': 'ANN4',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Each node then passes this weighted sum through a simple function – for example, a function that transforms the weighted sum to a value between 0 and 1. This transformation step helps the model capture non-linear patterns in the data.",
                    'flubber_id': 'ANN5',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "These transformed values are then passed to nodes in the next hidden layer, or, if there aren't more hidden layers, to the output layer. The more nodes or hidden layers in the model, the better the model can “learn” complex relationships. To predict stream temperature, we use an ANN with many hidden layers.",
                    'flubber_id': 'ANN6',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "When the output layer receives the information from the final hidden layer, it computes a weighted sum of that information…",
                    'flubber_id': 'ANN7',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "And passes that sum through a simple function to produce a final output value.",
                    'flubber_id': 'ANN8',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "This value is the model’s prediction of stream temperature, given the air temperature and precipitation values provided as input to the model.",
                    'flubber_id': 'ANN9',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model compares the predicted value to the observed stream temperature. The difference between the two values represents the error in the prediction. Since the first set of weights are chosen randomly, the model is pretty far off to begin with.",
                    'flubber_id': 'ANN10',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model reduces the error by going back and adjusting the weights throughout the model. It figures out how to change the weights to make more accurate predictions by calculating the relationship between the error and every weight in the model.",
                    'flubber_id': 'ANN11',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The model keeps adjusting weights and evaluating the error associated with stream temperature predictions for every location and every day that we have monitoring data in the DRB.",
                    'flubber_id': 'ANN12',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "Eventually, the model lands on a set of weights that produces the most accurate predictions based on all the data across all the locations. At this point the model is considered “trained” and can be used to make predictions using new input data. But the model will never be perfect, even when fully trained, and will perform better for some places and times than others.",
                    'flubber_id': 'ANN13',
                    'bees_id': 'step_error_exp'
                }],
            "Testing an artificial neural network": [
                {
                    'method': "We can test a trained model by asking it to predict stream temperature using input data it has never seen. Here we show daily temperature predictions for a stream reach over one month.",
                    'flubber_id': '',
                    'bees_id': 'step_error_exp'
                },
                {
                    'method': "The difference between those predictions and observed stream temperatures represents the prediction error. It is small when the model makes accurate predictions.",
                    'flubber_id': '',
                    'bees_id': 'step_error_obs'
                },
                {
                    'method': "In order to evaluate how well the model is capturing the temperature dynamics of the stream reach, we can summarize the daily prediction errors – for example, by taking the root mean squared error (RMSE).",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse'
                }, 
                {
                    'method': "Small errors translate to low RMSE, indicating the model is accurately predicting water temperature.",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse'
                }, 
                {
                    'method': "Large errors translate to high RMSE, indicating the model is doing a poor job of predicting water temperature dynamics.",
                    'flubber_id': '',
                    'bees_id': 'step_error_rmse_scale'
                }, 
                {
                    'method': "We can use RMSE to compare the performance of different models or to assess how accuracy varies in time, space, or under different conditions. Here each dot represents the RMSE for predictions in a single stream reach. The model was trained on all available data in the training period, and is accurate in most reaches.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "But recall that the availability of stream temperature data varies greatly across the continental United States, and even within the well-monitored DRB. How does the ANN perform when we don't have a lot of training data?",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "To find out, we artificially reduced the amount of data used to train the model, and compared this restricted model to the one trained on all of the available data.",
                    'flubber_id': '',
                    'bees_id': 'step_ann'
                },
                {
                    'method': "When only 0.1% of the training data is used, the ANN model is less accurate and has a hard time capturing temperature dynamics in the streams.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "How can we improve the accuracy of model predictions when training data are limited?",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "In reality, humans already know a lot about water temperature. Even without training observations, we can guess that water temperature will be warmest in the summer and that forested headwater streams are cooler than large urban streams.",
                    'flubber_id': '',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "How can we tell a machine learning model what we already know?",
                    'flubber_id': 'ANN13',
                    'bees_id': 'step_ann_exp'
                },
            ],
            "Recurrent neural network": [
                {
                    'method': "One of the simplest things we know is how time relates to stream temperature. Put simply, the water temperature tomorrow is likely to be similar to the water temperature today. For machine learning modeling, incorporating this knowledge is as simple as using models that have memory, allowing information from one day to be passed on to the next. The model with memory that we use is called a recurrent neural network (RNN).",
                    'flubber_id': 'RNN',
                    'bees_id': 'step_ann_exp'
                },
                {
                    'method': "In the DRB, giving the model a memory improves model accuracy in some reaches but worsens model performance in others.",
                    'flubber_id': 'RNN',
                    'bees_id': 'step_rnn'
                }],
            "Graph convolutional network": [
                {
                    'method': "Another piece of knowledge we can use to improve the model is that all streams are part of a network. You don’t need to be a hydrologist to know that water flows downstream, and that the water temperature in downstream reaches is likely to be similar to that in upstream reaches. We can use these spatial relationships to better leverage information across the stream network.",
                    'flubber_id': 'RGCN',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "The way we inform the model about space is by calculating the distance between stream reaches and allowing the model to weight information based on distance. Information coming from a nearby reach will be weighted more heavily (assigned greater importance) than information coming from a reach that is far away. The spatially aware model we use is called a graph convolutional network.",
                    'flubber_id': 'RGCN_2',
                    'bees_id': 'step_rnn'
                },
                {
                    'method': "In the DRB, adding information about the spatial configuration of the river network improves predictions.",
                    'flubber_id': 'RGCN_2',
                    'bees_id': 'step_rgcn'
                }],
            "Knowledge-guided deep learning": [
                {
                    'method': "Beyond time and space, we know quite a bit about the science behind how and why streams gain or lose heat – we shouldn’t ignore this wealth of knowledge simply because we’re using a machine learning approach that is driven by data. These natural processes are intuitive – warm, sunny days should warm streams, and cold, cloudy days should cool streams.",
                    'flubber_id': 'RGCN_ptrn',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "Scientists have written heat loss and gain rules into equations to make temperature predictions that generally follow the laws of physics. We can use these equations to make temperature predictions for all places and times in the DRB, and treat these predictions as “real” data to train our neural network.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "By training the model on the predictions generated by these physics-derived equations, the machine learning model “learns” physics. We call this method knowledge-guided deep learning.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn'
                },
                {
                    'method': "And the great news? Once the model has learned the general physics of the system, it can do more with less. Even when less than 1 percent of temperature data is available for training, the model is still able to make accurate predictions.",
                    'flubber_id': '',
                    'bees_id': 'step_rgcn_ptrn'
                },
                {
                    'method': "These results give us confidence that we can use knowledge-guided deep learning to make predictions in river basins with limited observations.",
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

    a.pub_link {
      color: $mediumBlue;
    }

    a.pub_link:focus {
      outline: none;
    }
</style>