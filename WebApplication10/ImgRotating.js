var images = [
    "first_image.png",
    "second_image.png",
    "third_image.png",
    "forth_image.png",
    "fifth_image.png",
    "sixth_image.png",
    "seventh_image.png",
    "eighth_image.png",
    "nineth_image.png",
    "tenth_image.png",
];   // add the images if necessary

numImages = images.length,
    index = 1;  // start from the second image because first image is already in the HTML

function cycleImages() {
    image = "AppleRotation/" + images[index];   // assume all the images are store in the images sub-directory
    $("#banner").attr("src", image);     // set the src attribute of the <img tag to the image to be shown
    index++;                             // advanced to the next image
    if (index == numImages) index = 0;   // recycle to the first image
}

$(function () {                          // start the rotation when document is ready
    setInterval("cycleImages()", 800)
});