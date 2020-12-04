export default {
    textContents: {
        title1: "Predicting water temperature (ANN)",
        paragraph1: "Artifical neural networks (ANN), which are a form of deep learning, have had huge success in identifying complex relationships and making accurate predictions.",
        paragraph2: "We can measure the success of a model, in the case a ANN, by how closely the predicted temperature matches our measured temperature. A model that closely matches our observations in the streams has low error or good accuracy.",
        paragraph3: "Using an ANN to predict water temperatures in the DRB, we can compare prediction accuracy across different time periods, locations, and at different amounts of data coverage. Here we show model RMSEs (the root mean square error) for a series of model runs using all of the data available. ",
        paragraph4: "If a model perfectly predicts the observed data the RMSE will be 0. But as model accuracy decreases, prediction error increases and so does RMSE. When trained on 100% of the data, the ANN predicts temperatures fairly consistently in time and space.",
        paragraph5: "But when data are sparse (e.g. 1%), ANN predictions become less accurate. How can we help the model learn more with less data? This is where we can use our understanding of the world to give a machine learning model the upper hand. ",
        title2: "Recurrent neural network (RNN)",
        paragraph6: "So what do we know about the world, and how do we pass that information to a deep learning algorithm?'",
        paragraph7: "One of the simplest forms of process knowledge we can use is time. Put simply, the water temperature today is likely to be similar the water temperature tomorrow. For data-driven modeling, this is as simple as using models that have memory or allow information from one timestep to be passed on to the next time step. The model we used is called a recurrent neural network (RNN).",
        paragraph8: "In the DRB, giving the model a memory improved performance in some cases but decreased accuracy in others.",
        title3: "Graph convolutional network (RGCN)",
        paragraph9: "You don’t need to be a hydrologist to know water flows downstream, and that means the water temperature in upstream segments is likely to look like downstream segments. The spatial connections between streams allows us to leverage information across the stream network.",
        paragraph10: "The way we inform the model about space is by calculating the distance between stream segments and allowing the model to weight information based on distance. The method we used is called a graph convolutional network.",
        paragraph11: "In the DRB, adding information about the spatial configuration of the river network improves predictions.",
        title4: "Deep learning (RGCN_ptrn)",
        paragraph12: "Beyond space and time, We know quite a bit about how and why streams gain or lose heat – we shouldn’t ignore this wealth of knowledge simply because we’re using a data-driven approach. These process are intuitive – warm, sunny days should warm streams, and cold, cloudy days should cool streams.",
        paragraph13: "The way we inform our model about thermodynamics is by using a thermodynamic model to make predictions for all places and times.These predictions are used as “real data” to train our neural network.This creates a data- driven model that is emulating the physics of the system. ",
        paragraph14: "And the great news? Now that the deep learning model is capturing the physical system, it can do more with less. Even under highly data sparse conditions (< 1% of training data), the model is still able to make accurate predictions.",
    }
}