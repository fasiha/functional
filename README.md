## Intro
This repository contains a packaged version of Matthew Maycock's [*Functional Library*](http://www.mathworks.com/matlabcentral/fileexchange/18835-functional-library) for Matlab. The original library was submitted to Matlab File Exchange in 2008, and since then, Matlab's package feature allows users to create namespaces.

By placing the `+functional/` directory inside any directory in your Matlab path (e.g., `~/Documents/MATLAB/`), you can access the functions in this library by prepending "`functional.`" to calls, e.g.,

```m
>> functional.foldl(functional.map(0:10, @sin), 0, @plus)
ans =
       1.4112
>> sum(sin(0:10))
ans =
       1.4112
```

(Of course this isn't a convincing demostration of why we should use functional programming in Matlab.)

## Technical details
The main problem is that code inside a package has to refer to other code in the same package with the package name prefix. I worked around this by [`import`ing](http://www.mathworks.com/help/matlab/matlab_oop/importing-classes.html) the entire package's contents at the top of every function (see the `packagize.js` file).

Since the original Library lacked a test suite, I can only discover errors in packagization as I use the Library. Please file an issue on Github if you find a problem.

## License
While the original submission to File Exchange did not specify a license, personal communication from Matthew Maycock dated 2015/5/21 indicates it was released under "Public domain; no warranty / guarantee of any kind".

This repository, as derivative work, is also released into the public domain.
