# Cyanide

## Overview

Cyanide is a new interface layer for Parable. It is intended to be used for command line scripting and CGI based applications.

## Setup

Copy *cyanide* into your path.

To rebuild *cyanide* you will need:

* Python 2.x
* parable.py
* stdlib.p

Copy *parable.py* and *stdlib.p* to this directory. Run the *convert.py* script to get a new *cyanide* script.

## Functions

In addition to the standard Parable functions, *Cyanide* adds the following:

### print

    value -

Display a value

### cr

    -

Display a newline (\n or ASCII 10) character

### open-file

    string<name> string<mode> - file

Open a file and return a file identifier. Valid modes are:

__todo__

### close-file

    file -

Close an open file.

### read-file

    file - character

Read a character from a file.

### write-file

    character file -

Write a character to a file.

### file-position

    file - number<size>

Return the current location within a file.

### file-seek

    number<offset> file -

Move the internal pointer to a new location within a file.

### file-size

    string<name> - number

Return the size of a file.

### delete-file

    string<name> -

Delete a file.

### slurp-file

    string<name> - string<contents>

Open a file, read its contents into a string, and close the file.

### file-exists?

    string<name> - flag

Given a filename, return **true** if the file exists or **false** if it does not.

### arg-count

    - number

Return the number of arguments passed to the script.

### get-arg

    number - string

Return the requested argument.

### value-for-key

    string<key> - string<value>

Given a key for an HTML form element, return the corresponding value.

### get-environment-value

    string<key> - string<value>

Given a key for an environment element, return the corresponding value.

## Example

    'Content-type: text/html' println cr

    'post' value-for-key '(no)' =
    [ 'You passed a request for post ' + 'post' value-for-key + ]
    [ 'No request was detected' ] if
    println


## Notes

