# csvToMarkdown Function

The `csvToMarkdown` function is a MATLAB function that converts a CSV file to a Markdown table. It reads a CSV file, rounds the numbers to 4 decimal places, and writes the data to a Markdown file. Additionally, it also generates a LaTeX table in the output Markdown file.

## Function Signature

```matlab
csvToMarkdown(inputFile, outputFile);
```

## Parameters

- `inputFile` (string): The path to the input CSV file. The CSV file should be in a format that can be read into a table using the `readtable` function in MATLAB.

- `outputFile` (string): The path to the output Markdown file. The function will write the data to this file in Markdown table format, followed by the same data in LaTeX table format.

## Example

This will read the data from 'yourfile.csv', round the numbers, and write the data to 'output.md' in Markdown table format, followed by a LaTeX table:

```matlab
csvToMarkdown('yourfile.csv', 'output.md');
```

## Related Functions

- `readtable`: Reads data from a file into a table.
- `fopen`: Opens a file for writing.
- `fprintf`: Writes formatted data to a file.
- `fclose`: Closes a file.

## Note

The LaTeX table is enclosed in a code block with `latex` as the language identifier. This allows the LaTeX table to be properly formatted when viewed in a Markdown viewer that supports syntax highlighting for LaTeX. Please note that the LaTeX table format used here is a basic one and may need to be adjusted based on your specific needs. Also, remember to use a LaTeX compiler to compile the LaTeX code into a PDF or other document format.
