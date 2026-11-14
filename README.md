# Animal Image Classification

A MATLAB learning project that classifies cat, dog, and panda images using a feedforward neural network. The scripts cover image preparation, training, a confusion matrix, and interactive prediction previews.

![Example prediction](https://user-images.githubusercontent.com/82886701/131245077-49f5636c-cd3b-40de-b127-1b32343da635.png)

## Files

| File | Purpose |
| --- | --- |
| [build_animals.m](build_animals.m) | Normalize images, convert them to grayscale, blur and resize them to 200 × 200 pixels, then write `data.mat`. |
| [nn_animals.m](nn_animals.m) | Train a `patternnet(25)` network, save `nn_model.mat`, and display predictions. |
| [displayData.m](displayData.m) | Render flattened image vectors as a grid. |

## Running the project

Use MATLAB with Image Processing Toolbox and the neural-network functions provided by Deep Learning Toolbox.

1. Supply your own image dataset. Images and trained models are not included.
2. Change `location` in `build_animals.m` to the image directory. The label logic expects filenames containing `cats`, `dogs`, or `panda`.
3. Review the fixed image counts and directory ordering before running the builder. The original loop and preallocated arrays are specific to the author's dataset and are not a general-purpose dataset loader.
4. Run `build_animals`, inspect `X` and `y` in `data.mat`, then run `nn_animals` from the same directory.
5. Press Enter to advance through the prediction previews.

The training script manually selects 2,400 columns for training and uses the remaining columns for testing. The network also applies its own internal data division to the training input. Random splits are not seeded, so results can vary between runs.
