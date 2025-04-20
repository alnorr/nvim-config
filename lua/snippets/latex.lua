local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node

return {

    -- align*
    s("ali", {
        t("\\begin{align*}"),
        i(1, "content"),
        t("\\end{align*}"),
    }),

    -- basic header stuff
    s("head1", {
        t({ "\\documentclass{article}", "" }),
        t({ "\\usepackage{amsmath}", "" }),
        t({ "\\usepackage{amssymb}", "" }),
        t({ "\\usepackage{amssymb}", "", "" }),
        t({ "\\title{" }),
        i(1, "title"),
        t({ "}", "" }),
        t({ "\\author{Rasmus Alnor}", "" }),
        t({ "\\date{\\today}", "", "" }),
        t({ "\\begin{document}", "" }),
        t({ "\\maketitle", "" }),
        i(2, "content"),
        t({ "", "\\end{document}" }),
    }),
    s("head2", {
        t({ "\\documentclass[12pt]{article}", "" }), -- Increased font size for readability
        t({ "\\usepackage[utf8]{inputenc}", "" }), -- For proper encoding of special characters
        t({ "\\usepackage{amsmath}", "" }),
        t({ "\\usepackage{amssymb}", "" }),
        t({ "\\usepackage{geometry}", "" }),      -- For controlling page margins
        t({ "\\geometry{a4paper, margin=1in}", "" }), -- Set A4 paper and 1-inch margins
        t({ "\\usepackage{graphicx}", "" }),      -- For including images (if needed later)
        t({ "\\usepackage{hyperref}", "" }),      -- For creating hyperlinks (optional, but professional)
        t({ "", "" }),
        t({ "\\title{\\textbf{" }),               -- Make the title bold
        i(1, "Your Professional Title"),
        t({ "}}", "" }),
        t({ "", "" }),
        t({ "\\author{\\textbf{Rasmus Alnor}}", "" }), -- Make the author name bold
        t({ "\\date{\\today}", "" }),
        t({ "", "" }),
        t({ "\\begin{document}", "" }),
        t({ "\\maketitle", "" }),
        t({ "", "" }),
        i(2, "Your Professional Content Here"),
        t({ "", "" }),
        t({ "\\end{document}" }),
    }),


    s("head3", {
        t({ "\\documentclass[12pt]{article}", "" }),
        t({ "\\usepackage[utf8]{inputenc}", "" }),
        t({ "\\usepackage{amsmath}", "" }),
        t({ "\\usepackage{amssymb}", "" }),
        t({ "\\usepackage{geometry}", "" }),
        t({ "\\geometry{a4paper, margin=1in}", "" }),
        t({ "\\usepackage{graphicx}", "" }),
        t({ "\\usepackage{hyperref}", "" }),
        t({ "", "" }),
        -- EREWHON FONT SETUP
        t({ "\\usepackage{erewhon}", "" }),
        t({ "\\usepackage[T1]{fontenc}", "" }), -- Recommended for proper font encoding
        t({ "", "" }),
        t({ "\\title{\\textbf{" }),
        i(1, "Your Professional Title"),
        t({ "}}", "" }),
        t({ "", "" }),
        t({ "\\author{\\textbf{Rasmus Alnor}}", "" }),
        t({ "\\date{\\today}", "" }),
        t({ "", "" }),
        t({ "\\begin{document}", "" }),
        t({ "\\maketitle", "" }),
        t({ "", "" }),
        i(2, "Your Professional Content Here"),
        t({ "", "" }),
        t({ "\\end{document}" }),
    }),
    -- basic header stuff
    s("frac", {
        t("\\frac{"),
        i(1, "num"),
        t("}{"),
        i(2, "denom"),
        t("}"),
    }),

    -- summation
    s("sum", {
        t("\\sum_{"),
        i(1, "low"),
        t("}^{"),
        i(2, "high"),
        t("}"),
        i(3, ""),
    }),

    -- function
    s("fn", {
        i(1, "fn_name"),
        t("("),
        i(2, "arg(s)"),
        t(") = "),
        i(3, "fn def."),
    }),
}
