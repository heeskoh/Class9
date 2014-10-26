---
title       : Kid's Height Predictor
subtitle    : 
author      : Maria H. Koh
job         : Class on Coursera 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, mathjax, shiny]  # {mathjax, quiz, bootstrap}
mode        : standalone # {selfcontained, draft}
knit        : slidify::knit2slides

---
## Motivation 

* Parents are very interested in their kid's height - how short or tall 
* It's very difficult to predict a child's exact adult height due to various factors. 
* However, some studies suggested that the genetics factor contributes 60%-80%. 
* And a child's height based on parental heights subjects to regression toward the mean. 
* So, we can utilize a simple formula for calculating kid's estimated adult height.

---
## How to calculate estimated kid's adult height 

1. Convert each parent's height into centimeters. For example, if mom is 5 feet 6 inches, tall, her height is 167.64 centimeters.
2. Add both parents' heights together and divide the resulting number by two. 
3. Subtract 6.35 centimeters from the result above if the child is a girl. For a boy, add 6.35 centimeters to the average of the parent's height calculated above.
4. Your child's adult height will likely fall within 10.14 centimeters of that number.

---.class #id
## Simple formula for calculation

$$\frac{FatherHeight + MotherHeight}{2} \pm 6.35$$


### Reference information
[CDC Growth Charts of the United States](http://www.cdc.gov/GrowthCharts/) are good sources of information to evaluate the growth situation of a child.
The average height of male of age 20 or older is 176.3 cm, female is 162.2 cm in the United States.
Predicted heights are usually within <strong>10.16 centimeters</strong>, taller or shorter, than actual adult height. Medical conditions and other factors can affect a child's growth.

--- 
## Kid's Height Predictor!


<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <p><font size='2'>A child's height based on parental heights subjects to regression toward the mean. This calculator is base on this algorithm. Please enjoy it !</font></p>
      <h3>kid's information</h3>
      <label for="fhinput">Input Father's height(cm)</label>
      <input id="fhinput" type="number" value="176.3"/>
      <label for="mhinput">Input Mother's height(cm)</label>
      <input id="mhinput" type="number" value="162.2"/>
      <div id="gender" class="control-group shiny-input-radiogroup">
        <label class="control-label" for="gender">Kid's gender</label>
        <label class="radio ">
          <input type="radio" name="gender" id="gender1" value="-1" checked="checked"/>
          <span>Girl</span>
        </label>
        <label class="radio ">
          <input type="radio" name="gender" id="gender2" value="1"/>
          <span>Boy</span>
        </label>
      </div>
      <div>
        <button type="submit" class="btn btn-primary">Calculate!</button>
      </div>
      <p><font size='2'>If you don't know the exact height of your parents, you can accept the default value.</font></p>
    </form>
  </div>
  <div class="span8">
    <h3>Expected adult height for the kid</h3>
    <h3>You entered</h3>
    Father's Height(cm)
    <pre id="fhoutput" class="shiny-text-output"></pre>
    Mother's Height(cm)
    <pre id="mhoutput" class="shiny-text-output"></pre>
    Kid's gender
    <pre id="genderout" class="shiny-text-output"></pre>
    <h3>Which resulted in a prediction of</h3>
    <pre id="prediction" class="shiny-text-output"></pre>
    <p><font size='2'>Predicted heights are usually within <strong>10.16 centimeters</strong>, taller or shorter, than actual adult height. Medical conditions and other factors can affect a child's growth.</font></p>
  </div>
</div>
