export default {
    textContents: {
        "Training an automated neural network":[
            {
                'method': "Like other environmental models, ANNs are trained using a set of observed data. To predict stream temperature, we provide the ANN model with input data (precipitation and air temperature records) and output data (observed stream temperatures). During training, the model 'learns' through its attempts to find a pattern linking the inputs and the output. Keep in mind that the model only sees this information as numbers – it has no idea how the inputs and output may be physically related.",
                'flubber_id': 'ANN1',
                'bees_id': 'step_error'
            },
            {
                'method': "The first component of an ANN is called an input layer – this is where the model receives the raw input data.",
                'flubber_id': 'ANN2',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "From the input layer, the information is passed to what is known as a ‘hidden’ layer through a series of connections. Each connection transmits an input value to a processing node in the hidden layer. The model can vary the weight of these connections to assign more or less importance to a particular piece of information.",
                'flubber_id': 'ANN3',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "In the hidden layer, the receiving nodes compute a weighted sum of the received information…",
                'flubber_id': 'ANN4',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "…and then pass the weighted sum through a mathematical function, producing a single output value for each node. ",
                'flubber_id': 'ANN5',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "These output values are then passed to nodes in the next hidden layer, or, if there are no more hidden layers, to the output layer.",
                'flubber_id': 'ANN6',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "The output layer computes a weighted sum of the information received from the hidden layer…",
                'flubber_id': 'ANN7',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "And passes the sum through a mathematical function to produce a final output value.",
                'flubber_id': 'ANN8',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "This value is the model’s prediction of stream temperature, given the air temperature and precipitation values provided as input to the model.",
                'flubber_id': 'ANN9',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "The model compares the predicted value to the observed stream temperature. The difference between the two values represents the error associated with the prediction. Since the first set of weights and connections are initialized randomly, the model is pretty far off to begin with.",
                'flubber_id':'ANN10',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "The model attempts to reduce the error by going back and adjusting the weights throughout the model. It then generates a new prediction and computes the new error. Importantly, the model doesn’t adjust weights in any logical way – it merely tries hundreds of combinations of weights and evaluates the model performance for each set of weights.",
                'flubber_id': 'ANN11',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "The model keeps testing weights and evaluating the error associated with stream temperature predictions for every location and every day that we have monitoring data in the Delaware River Basin.",
                'flubber_id': 'ANN12',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "Eventually, the model lands on a set of weights that produces the most accurate predictions for all of the training data. At this point the model is considered ‘trained’ and can be used to make predictions using new sets of input data. But keep in mind that the model will never be perfect, even when fully trained, and will perform better for some places and times than others.",
                'flubber_id': 'ANN13',
                'bees_id': 'step_error_exp'
            }],
        "Testing an artificial neural network (ANN)": [
            {
                'method': "PREDICTED data on error plot",
                'flubber_id': '',
                'bees_id': 'step_error_exp'
            },
            {
                'method': "Add on OBSERVED",
                'flubber_id': '',
                'bees_id': 'step_error_obs'
            }],
        "Evaluating overall model accuracy": [
            {
                'method': "Collapse to RMSE for a single stream reach (100% of training data)",
                'flubber_id': '',
                'bees_id': 'step_error_rmse'
            },{
                'method': "One site RMSE to all site RMSEs (still 100% of training data)",
                'flubber_id': '',
                'bees_id': 'step_ann'
            }],
        "Model performance under restricted data availability": [
            {
                'method': "So how can we compare how a model performs when lots of data is available to how it performs when very little training data is available?",
                'flubber_id': '',
                'bees_id': 'step_ann'
            },
            {
                'method': "We can artificially restrict how much training data is received by the model",
                'flubber_id': '',
                'bees_id': 'step_ann'
            },
            {
                'method': "Add model trained on 2% of data, and model trained on 0.1% of data. Describe what they are seeing",
                'flubber_id': '',
                'bees_id': 'step_ann_exp'
            },
            {
                'method': "So how can we improve the model so that it does better under sparse conditions?",
                'flubber_id': '',
                'bees_id': 'step_ann_exp'
            },
        ],
        "Recurrent neural network (RNN)": [
            {
                'method': "One of the simplest forms of process knowledge we can use is time. Put simply, the water temperature today is likely to be similar the water temperature tomorrow. For data-driven modeling, this is as simple as using models that have memory or allow information from one timestep to be passed on to the next time step. The model we used is called a recurrent neural network (RNN)",
                'flubber_id': 'RNN',
                'bees_id': 'step_ann_exp'
            },
            {
                'method': "In the DRB, giving the model a memory improved performance in some cases but decreased accuracy in others.",
                'flubber_id': 'RNN',
                'bees_id': 'step_rnn'
            }],
        "Graph convolutional network (RGCN)":[
            {
                'method': "You don’t need to be a hydrologist to know water flows downstream, and that means the water temperature in downstream segments is likely to be similar to that in upstream segments. The spatial connections between streams allows us to leverage information across the stream network.",
                'flubber_id': 'RGCN',
                'bees_id': 'step_rnn'
            },
            {
                'method': "The way we inform the model about space is by calculating the distance between stream segments and allowing the model to weight information based on distance. The method we used is called a graph convolutional network.",
                'flubber_id': 'RGCN_2',
                'bees_id': 'step_rnn'
            },
            {
                'method': "In the DRB, adding information about the spatial configuration of the river network improves predictions.",
                'flubber_id': 'RGCN_2',
                'bees_id': 'step_rgcn'
            }],
        "Deep learning (RGCN_ptrn)":[
            {
                'method': "Beyond space and time, We know quite a bit about how and why streams gain or lose heat – we shouldn’t ignore this wealth of knowledge simply because we’re using a data-driven approach. These process are intuitive – warm, sunny days should warm streams, and cold, cloudy days should cool streams.",
                'flubber_id': 'RGCN_ptrn',
                'bees_id': 'step_rgcn'
            },
            {
                'method': "The way we inform our model about thermodynamics is by using a thermodynamic model to make predictions for all places and times.These predictions are used as “real data” to train our neural network.This creates a data- driven model that is emulating the physics of the system.",
                'flubber_id': '',
                'bees_id': 'step_rgcn'
            },
            {
                'method': "And the great news? Now that the deep learning model is capturing the physical system, it can do more with less. Even under highly data sparse conditions (< 1% of training data), the model is still able to make accurate predictions.",
                'flubber_id': '',
                'bees_id': 'step_rgcn_ptrn'
            }],
        "Predicting water temperature at a national scale": [
            {
                'title': "",
                'method': "This is all really cool considering the distribution of temperature observations at the national scale",
                'flubber_id': 'RGCN_ptrn',
                'bees_id': 'step_rgcn_ptrn'
            }]
    }
}