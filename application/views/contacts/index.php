<p>This is the contact home page check it out y'alll</p>
<table>
	<?php foreach($contact_list as $contact){ ?>
	<tr>
		<td><?php echo $contact['ID']; ?></td>
		<td><?php echo $contact['Name_First'] . ' ' . $contact['Name_Last']; ?></td>
		<td><?php echo $contact['Contact_Email']; ?></td>
		<td><a href="edit/<?php echo $contact['ID']; ?>">Edit</a></td>
		<td><a href="./delete/<?php echo $contact['ID']; ?>">Delete</a></td>
	</tr>
	<?php } ?>
</table>

<br />
<br />
<a href="./add">Add a contact</a>

<br />
<div id="one" class="boxes websitedesign">Popup</div>

<div class="one ui-corner-all" id="sliderContent">  
    <a class="one" id="popupContactClose">x</a>
      <div id="slideshow">
            <div id="slidesContainer">
              <div class="slide">
                <div class="title">
                  <h1>PlayArea</h1>
                  <p>As you probably know by now I love interactive design. This area has a few things that make me love the evolution of the web. Granted there isn't many options at the moment but I will be sure to add more in time.</p>
                </div>
              </div>
              <div class="slide">
                <h2>Sort Me</h2>
                <p>Go ahead and sort them into order, or even more out of order if you want to.</p>
                <br />
                <br />
                <ul id="sortable">
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.2</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.5</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.1</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.3</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.7</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.4</li>
                  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>List Item No.6</li>
                </ul>
              </div>
              <div class="slide">
                <h2>Drag over me</h2>
                <p>You can drag over the items that you want, alternativly you can<br />
                  hold Ctrl and select the ones that you want with a simple click</p>
                  <br />
                  <br />
                <ol id="selectable">
                  <li class="ui-widget-content">Item 1</li>
                  <li class="ui-widget-content">Item 2</li>
                  <li class="ui-widget-content">Item 3</li>
                  <li class="ui-widget-content">Item 4</li>
                  <li class="ui-widget-content">Item 5</li>
                  <li class="ui-widget-content">Item 6</li>
                  <li class="ui-widget-content">Item 7</li>
                </ol>
              </div>
              <div class="slide">
                <h2>Simply Click</h2>
                <p>Actions speak louder than words</p>
                <div class="column1of2">
                  <div class="shuffle"><p>Bounce</p></div>
                </div>
                <div class="column1of2">
                  <div class="bounce"><p>Shuffle</p></div>
                </div>
              </div>
            </div>
          </div>
    <div class="one" id="backgroundPopup"></div>
<br />

<div id="ajaxRequest">Click this to make an ajax request</div>