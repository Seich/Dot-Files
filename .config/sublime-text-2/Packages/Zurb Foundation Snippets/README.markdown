# Textmate bundle for Zurb Foundation

A set of snippets for Zurb's awesome responsive HTML framework. Going to add more, but there are a few snippets at the moment to make your day a little better.

## Installing

	cd ~/Library/Application\ Support/TextMate/Bundles/
	git clone git://github.com/liamr/Zurb-Foundation-Textmate-Bundle.git Zurb\ Foundation.tmbundle
	
## Changelog

###1.1
All snippets now have 'zf' prepended to avoid conflict with other installed Bundles. Updated documentation to reflect.

##Layout & Grid

### `zfc` Creates a Container

    <div class="container" id="name">
    	(cursor)	
    </div>
    
### `zfr` Creates a Row

    <div class="row" id="name">
    	(cursor)	
    </div>
    
### `zfcr` Creates a Container & Row

    <div class="container" id="name">
        <div class="row" id="name">
    	    (cursor)	
    	</div>
    </div>
    
### `zfc1` - `zfc12` Creates columns based on the number ie:

`zfc6` creates

    <div class="six columns" id="name">
        (cursor)
    </div>
    
### `zfcc` Creates a basic column layout and lets you specify the number you want ie:

    <div class="[one - tweleve] column[s]" id="name">
        (cursor)
    </div>
    
    

##Buttons

### `zfbtn` Creates a basic button and lets you specify the options

    <a href="#" class="[small, medium, large] [white, blue, red, black] button">(Cursor)</a>
    
### `zfnbtn` Creates a nice button and lets you specify the options

    <a href="#" class="nice radius [small, medium, large] [white, blue, red, black] button">(Cursor)</a>
    
##More coming soon
I want to add more as soon as possible, and also work this into a Sublime Text 2 bundle!
If you have suggestions let me know!

##Credit
Cheers to Fred Oliveira - https://github.com/fredoliveira/textmate-960gs/blob/master/README.markdown - based mine off his 960.gs 

