# Representation guide

This guide helps an author choose between prose, a list, a table, a chart, or a diagram, and says what each form needs in order to be read correctly. It is advice; the rules are in the [specification](specification.md).

Choose the simplest representation that answers the reader's question. Format does not determine authority: a table, diagram, dataset, or prose section may be the canonical home. A summary of material maintained elsewhere is a derived view and should link to it.

| Need | Useful form |
|---|---|
| Explain an idea or reasoning | Prose |
| Enumerate parallel items | Bullets |
| Describe ordered actions | Numbered list |
| Compare repeated attributes | Table |
| Show quantities or trends | Statistic or chart |
| Show dependencies or topology | Diagram |
| Show interaction over time | Sequence diagram |
| Show lifecycle | State diagram |
| Preserve exact syntax or output | Code block or evidence artifact |

## Tables

Use tables for comparisons and compact reference. Keep the columns relevant and readable. State units, missing-value meanings, and scope where needed.

A canonical reference table can contain complete values. A summary table should contain only the information needed to orient the reader and link to detail. Keep status summaries synchronized when their source changes or identify the source revision of a snapshot.

Do not require a duplicate prose account of each canonical row. Provide surrounding context sufficient to interpret it.

## Statistics and charts

Make the following discoverable for quantitative claims:

```text
Measure + units + scope + time or revision + source
```

Add counts and denominators when percentages would conceal scale. Explain exclusions, aggregation, uncertainty, and missing data when they affect interpretation. Label invented numbers as illustrative.

Use line charts for ordered trends, bars for categorical comparisons, and scatter plots for relationships between quantities when appropriate. Label axes, units, interval, and aggregation. Disclose axis truncation or transformations that could change interpretation. Avoid decoration that obscures comparisons; Tufte's *The Visual Display of Quantitative Information* (2001) remains the standard account of why.

Link to the underlying data and describe the calculation or transformation. A generated chart should identify its generation method; a manually prepared chart can document the same transformation in prose. Neither requires a new script.

## Diagrams

Give each diagram a clear purpose and scope. Use short labels, a legend where needed, and direction indicators with explicit meaning. Distinguish a proposed design from an implemented one.

A diagram can be the canonical description of topology. It needs enough accompanying explanation or a text equivalent to convey its important meaning to intended readers, including readers who cannot rely on color or the rendering. [WCAG 2.2](https://www.w3.org/TR/WCAG22/) success criteria 1.1.1 (Non-text Content) and 1.4.1 (Use of Color) state the minimum: a text alternative exists, and color is never the only carrier of meaning. This does not require a second independently maintained inventory of every fact.

For summary diagrams, link to the authoritative detail. Keep editable source with rendered output where practical. Mermaid can be convenient for repository documentation, but use another form when it communicates more clearly.

## Code, commands, and output

Label examples, placeholders, and captured output. Specify the environment when syntax or behavior depends on it. Do not imply that a displayed command was executed simply because it is copyable. Preserve the distinction between a recommended procedure and a historical transcript.

## Representation review

Ask whether the chosen form reduces the work needed to answer a specific question. If a table is harder to read than two sentences, use prose. If a diagram reveals a relationship that a list hides, use a diagram. Presentation should support understanding without creating competing sources of maintained information.
