rm(list=ls()) #clean, clc, close all
# ***************
# R version 4.4.2 / win
# author: Nikola Jordánová
# *************

# Path
setwd('V:/MPA-PRG/exercise_03') # set working directory

# IndexOfMin

IndexOfMin <- function(array, first, last){
  index <- first
  for (k in (first + 1) : last){
    if (array[k] < array[index]){
       index <- k
    }
  }
   return (index)
}

IndexOfMin(c(1,0,3,5,6), 1,4)

# SelectionSort
SelectionSort <- function(array, n){
   for (i in 1 : (n - 1)){
     j <- IndexOfMin(array, i, n)
     array[c(i,j)] <- array[c(j,i)]
}
   return (array)
}

array <- c(5,2,6,3,4)
n <- length(array)
SelectionSort(array,n)

# RecursiveSelectionSort
RecursiveSelectionSort <- function(array, first, last){
   if (first <- last){
     index <- IndexOfMin(array, first, last)
     array[c(first,index)] <- array[c(index, first)]
     array <- RecursiveSelectionSort(array, first + 1, last)
   }
   return (array)
}