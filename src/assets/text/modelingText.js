export default {
    textContents: {
        "":[
            {
                'method': "Artificial neural networks (ANN), which are a type of machine learning model, have had huge success in identifying complex relationships and making accurate predictions. At its most basic, an ANN consists of four components: an input layer, synapses that pass information between layers, one or more hidden layers, and an output layer.",
                'flubber_id': 'ANN1',
                'bees_id': 'ANN'
            },
            {
                'method': "To predict stream temperature, we provide the model with a set of observed stream temperatures and associated records of air temperature and precipitation. The model attempts to find a relationship between the meteorological inputs and stream temperature. Keep in mind that the model only sees this information as numbers – it has no idea how the inputs and output may be related.",
                'flubber_id': 'ANN2',
                'bees_id': 'ANN'
            },
            {
                'method': "The machine learning model ‘learns’ through its attempts to capture these relationships. It begins by passing the information from the input layer to what is called a ‘hidden’ layer. The information is passed through connections. These connections can be weighted to adjust how much importance is assigned to a particular input value. Here, precipitation is weighted slightly less than air temperature.",
                'flubber_id': 'ANN3',
                'bees_id': 'ANN'
            },
            {
                'method': "The hidden layer receives the weighted information through its connections to the input layer. Each neuron in the hidden layer acts as a processing node, and passes the weighted information through a mathematical function. Each processing node produces a single output value, which is then passed to the next hidden layer, or, if it is the last, to the output layer.",
                'flubber_id': 'ANN4',
                'bees_id': 'ANN'
            },
            {
                'method': "The ouput layer compiles all of the information into a single prediction of stream temperature.",
                'flubber_id': 'ANN5',
                'bees_id': 'ANN'
            },
            {
                'method': "The model compares the value it produced to the actual stream temperature. Since the first set of weights and connections are initialized randomly, the model is pretty far off to begin with. The model computes the difference between the prediction temperature and the actual temperature and uses that difference to adjust the weights throughout the model. Importantly, the model doesn’t adjust weights in any ‘smart’ way – it merely tries hundreds of combinations of weights and evaluates the model performance for each set of weights.",
                'flubber_id': 'ANN6',
                'bees_id': 'ANN'
            },
            {
                'method': "Here, precipitation is heavily weighted, while air temperature is largely ignored by the model.",
                'flubber_id': 'ANN7',
                'bees_id': 'ANN'
            },
            {
                'method': "While here, the opposite is true – air temperature is weighted much more heavily than precipitation.",
                'flubber_id': 'ANN8',
                'bees_id': 'ANN'
            },
            {
                'method': "This is a simplified stream network with 3 temperature gages. Using the data collected from these gages we can model water temperature across the stream network of the Delaware River Basin.",
                'flubber_id': 'ANN',
                'bees_id': 'ANN'
            },
            {
                'method': "One way to do this is to use an artifical neural network (ANN), a form of deep learning. ANNs have had huge success in identifying complex relationships and making accurate predictions.",
                'flubber_id':'ANN',
                'bees_id' : 'ANN'
            }],
        "Artificial neural network (ANN)": [
            {
                'method': "We can measure the success of a model, in the case a ANN, by how closely the predicted temperature matches our measured temperature. A model that closely matches our observations in the streams has low error or good accuracy.",
                'flubber_id': '',
                'bees_id': 'ANN'
            },
            {
                'method': "Using an ANN to predict water temperatures in the DRB, we can use RMSE to compare prediction accuracy across different time periods, locations, and data coverage.",
                'flubber_id': '',
                'bees_id': 'ANN'
            },
            {
                'method': "If a model perfectly predicts the observed data the RMSE will be 0. But as model accuracy decreases, prediction error increases and so does RMSE. When trained on 100% of the data, the ANN predicts temperatures fairly consistently in time and space.",
                'flubber_id': '',
                'bees_id': 'ANN'
            },
            {
                'method': "But when data are sparse (e.g. 1%), ANN predictions become less accurate. How can we help the model learn more with less data? This is where we can use our understanding of the world to give a machine learning model the upper hand. ",
                'flubber_id': 'ANN',
                'bees_id': 'ANN'
            },
            {
                'method': "So what do we know about the world, and how do we pass that information to a deep learning algorithm?",
                'flubber_id': 'ANN',
                'bees_id': 'ANN'
            }],
        "Recurrent neural network (RNN)": [
            {
                'method': "One of the simplest forms of process knowledge we can use is time. Put simply, the water temperature today is likely to be similar the water temperature tomorrow. For data-driven modeling, this is as simple as using models that have memory or allow information from one timestep to be passed on to the next time step. The model we used is called a recurrent neural network (RNN)",
                'flubber_id': 'RNN',
                'bees_id': 'RNN'
            },
            {
                'method': "In the DRB, giving the model a memory improved performance in some cases but decreased accuracy in others.",
                'flubber_id': 'RNN',
                'bees_id': 'RNN'
            }],
        "Graph convolutional network (RGCN)":[
            {
                'method': "You don’t need to be a hydrologist to know water flows downstream, and that means the water temperature in downstream segments is likely to be similar to that in upstream segments. The spatial connections between streams allows us to leverage information across the stream network.",
                'flubber_id': 'RGCN',
                'bees_id': 'RGCN'
            },
            {
                'method': "The way we inform the model about space is by calculating the distance between stream segments and allowing the model to weight information based on distance. The method we used is called a graph convolutional network.",
                'flubber_id': 'RGCN_2',
                'bees_id': 'RGCN'
            },
            {
                'method': "In the DRB, adding information about the spatial configuration of the river network improves predictions.",
                'flubber_id': 'RGCN_2',
                'bees_id': 'RGCN'
            }],
        "Deep learning (RGCN_ptrn)":[
            {
                'method': "Beyond space and time, We know quite a bit about how and why streams gain or lose heat – we shouldn’t ignore this wealth of knowledge simply because we’re using a data-driven approach. These process are intuitive – warm, sunny days should warm streams, and cold, cloudy days should cool streams.",
                'flubber_id': 'RGCN_ptrn',
                'bees_id': 'RGCN_ptrn'
            },
            {
                'method': "The way we inform our model about thermodynamics is by using a thermodynamic model to make predictions for all places and times.These predictions are used as “real data” to train our neural network.This creates a data- driven model that is emulating the physics of the system.",
                'flubber_id': '',
                'bees_id': 'RGCN_ptrn'
            },
            {
                'method': "And the great news? Now that the deep learning model is capturing the physical system, it can do more with less. Even under highly data sparse conditions (< 1% of training data), the model is still able to make accurate predictions.",
                'flubber_id': '',
                'bees_id': 'RGCN_ptrn'
            }],
        "Predicting water temperature at a national scale": [
            {
                'title': "",
                'method': "This is all really cool considering the distribution of temperature observations at the national scale",
                'flubber_id': 'RGCN_ptrn',
                'bees_id': 'RGCN_ptrn'
            }]
    }
}