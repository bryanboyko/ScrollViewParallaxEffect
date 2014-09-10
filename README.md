#Overview
A very nice effect common to quite a few webpages (i beleive it was used on Flickr's homepage for awhile) in which imaged in the background move as the user scrolls.

NOTE: This is not the same as the parallax view new in iOS 7 which relies on the accelerometer. The image movement in this case is based only on the contentOffest of the scrollView.

#Instructions
Installationwith this version is not ultimately easy. You will need to look through the code and possible .xib files to implement this in your applications.

In case installation is not easy, the basic procedure is:

    Add a scrollView to a view.
    Add a content view to the scrollView.
    Increase the size of the view, scrollView, and content view.
    Set constraints for the scrollView and content view.
    Add subviews to the content View and have them clipToBounds.
    Add image views to each of these subviews that are larger than the subviews.
    Animate the image views in relation to the contentOffset of the scroll view.
    
#Sample
It is difficult to see the effect in the .gif, but the photos move seamlessly in realtime relative to the view scrolling.

![alt tag](https://github.com/bryanboyko/ScrollViewParallaxEffect/blob/master/parallax%20gif.gif)
