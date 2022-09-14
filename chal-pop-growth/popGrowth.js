// p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

// the function nbYear should return n number of entire years needed to get a population greater or equal to p.

// aug is an integer, percent a positive or null floating number, p0 and p are positive integers (> 0)

const popCalc = (pop, growth, newFolks, target) => {
    let years = 0
    while (pop < target){
      pop += (pop *(0.01 * growth) + newFolks)
      years++
    }
    return years
  }
  
  
  
  console.log(popCalc(1500, 5, 100, 5000))  //--> 15
  
  console.log (popCalc(1500000, 2.5, 10000, 2000000))  //--> 10