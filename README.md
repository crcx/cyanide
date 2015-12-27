# Cyanide

Cyanide is an interface for Parable. It expands the core language with I/O functionality, CGI support, and programmatic HTML generation.

## Basic I/O

### Output

#### print

    value -

Display a value to the standard output.

#### cr

    -

Display a newline. Effectively the same as:

    10 :c print

### File Operations

#### open-file

    string<name> string<mode> - file-id

Open a file and return a file identifier. Valid file modes are:

**TODO**

#### close-file

    file-id -

Close an open file.

#### read-file

    file-id - character
    
Read a single character from a file.

#### write-file

    character file-id -

Write a character to a file.

#### file-position

    file-id - number

Return the current location within a file.

#### file-seek

    number file-id -

Move the current location within a file to the specified location.

#### file-size

    string<name> - number

Return the size of a file.

#### delete-file

    string<name> -

Delete a file.

#### slurp-file

    string<name> - string<contents>

Read the contents of a file into a slice and return a pointer to them.

#### file-exists?

    string<name> - flag

Return **true** if the file exists or **false** otherwise.

#### arg-count

    - number

Return the number of arguments passed to the script.

#### get-arg

    number - string

Return the requested argument.

### CGI

#### value-for-key

    string<key> - string<value>

Given a key for an HTML form element, return the corresponding value. If no value exists, return a string: *'(no)'*

#### content-type

    string -

#### PATH-INFO

    - string

### Generating HTML

Cyanide provides a variety of functions for creating HTML.

Example:

    [ \
      [ \
        [ "Head Begins" \
          [ 'Test Page' ] title \
          [ 'filename.css' ] stylesheet \
        ] head \
        [ "Body Begins" \
          [ 'Test Page' ] h1 \
          [ 'This is a paragraph.' ] p \
          [ 'This is a longer paragraph ' [ 'with some ' ] strong [ 'formatted text' ] em ] p \
        ] body \
      ] html \
    ] build-string

These are grouped into broad categories:

#### General Structure

* html
* head
* body
* div
* div:class
* div:id
* span
* span:class
* span:id

#### Metadata

* title

#### CSS

* css
* stylesheet

#### Formatting

* h1
* h2
* h3
* h4
* em
* strong
* p
* p:class
* p:id
* pre
* pre:class
* pre:id
* code
* code:class
* code:id
* hr

#### Links

* link

    [ 'url'  'descriptive' ] link

#### Scripting

* script

# TODO -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

* external script reference
